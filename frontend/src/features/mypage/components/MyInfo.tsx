import { FC, useEffect } from "react";
import styles from "../MyPage.module.css";
import MyProfile from "./MyProfile";

interface MyInfoProps {
  account: string;
  setNFTListValue: any;
}

const MyInfo: FC<MyInfoProps> = ({ account, setNFTListValue }) => {
  const myNFT = () => {
    setNFTListValue("myNFT");
  };

  const likeNFT = () => {
    setNFTListValue("likeNFT");
  };

  const createNFT = () => {
    setNFTListValue("createNFT");
  };

  return (
    <div className={styles.MyInfo}>
      <MyProfile account={account} />

      <div className={styles.MyNFTInfo}>
        <p id="myNFT" className={styles.MyNFTInfoButton} onClick={myNFT}>
          보유한 NFT
        </p>
        <hr />
        <p className={styles.MyNFTInfoButton} onClick={likeNFT}>
          찜한 NFT
        </p>
        <hr />
        <p className={styles.MyNFTInfoButton} onClick={createNFT}>
          내가 그린 NFT
        </p>
      </div>
    </div>
  );
};

export default MyInfo;
