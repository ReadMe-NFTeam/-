import styles from "../NftDetail.module.css";
import { truncatedAddress } from "../../../features/auth/authSlice";
import { useEffect, useState } from "react";
import { useAppSelector } from "app/hooks";
import { selectIsActive } from "../NftDetailSlice";
import { SaleReadmeContract } from "web3Config";
import { nftTime } from "../NftDetailInfo";

/* 카드 앞면 */
const NftDetailCard = (props: any) => {
  const { tokenId, nftDetail, nftPrice, nftOwner } = props;
  const isAvail = useAppSelector(selectIsActive);
  console.log("before use", isAvail);
  const [isSale, setIsSale] = useState(!isAvail || nftPrice.toString() === "0");

  const getTimeInfo = async () => {
    const response = await SaleReadmeContract.methods.readmeTokenEndTime(tokenId).call();
    await SaleReadmeContract.methods.parseTimestamp(response).call((err: any, res: any) => {
      const nftEndTime: nftTime = {
        year: Number(res.year),
        month: Number(res.month),
        day: Number(res.day),
        hour: Number(res.hour),
        minute: Number(res.minute),
        second: Number(res.second),
      };
      const eTime = new Date(nftEndTime.year, nftEndTime.month - 1, nftEndTime.day, nftEndTime.hour, nftEndTime.minute, nftEndTime.second);
      const now = new Date();
      const diff = +eTime - +now;
      setIsSale(diff > 0);
    });
  };

  const sliceText = (textString: String) => {
    if (textString.length > 10) return textString.slice(0, 6) + "...." + textString.slice(-5);
    else return textString;
  };

  useEffect(() => {
    getTimeInfo();
  }, []);

  useEffect(() => {
    if (!isAvail || nftPrice.toString() === "0") {
      setIsSale(isAvail);
    }
  }, [isAvail, isSale]);
  return (
    <div className={styles.cards}>
      <div className={styles.card_contents_front}>
        <img className={styles.card_contents_front_child} src={nftDetail.imageURL} alt="dog" />
        <div className={styles.card_contents_front_child}>
          <div className={styles.card_img_info_child}>
            <div>번호</div>
            <div>{tokenId}</div>
          </div>
          <div className={styles.card_img_info_child}>
            <div>정답</div>
            <div>{sliceText(nftDetail.name)}</div>
          </div>
          <div className={styles.card_img_info_child}>
            <div>창작자</div>
            <div>{truncatedAddress(nftDetail.author).toLowerCase()}</div>
          </div>
          <div className={styles.card_img_info_child}>
            <div>소유자</div>
            <div>{truncatedAddress(nftOwner).toLowerCase()}</div>
          </div>
        </div>
        <div className={styles.card_contents_front_child}>
          <div>현재 가격</div>
          {/* <div>{nftPrice} SSF</div> */}
          {isSale && nftPrice !== "0" ? <div>{nftPrice} SSF</div> : <div>판매 미등록</div>}
        </div>
      </div>
    </div>
  );
};

export default NftDetailCard;
