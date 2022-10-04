// css
import styles from "../Welcome.module.css";
import WelcomeNavbar from "./WelcomeNavbar";
import cloud1 from "assets/welcome/page3_cloud1.svg";
import cloud2 from "assets/welcome/page3_cloud2.svg";

const WelcomePageThree = () => {
  return (
    <div className={styles.MotionArea}>
      <div className={`${styles.WelcomeBackground} ${styles.one}`}></div>
      <div className={`${styles.WelcomeBackground} ${styles.two}`}></div>
      <div
        className={`${styles.WelcomeBackground} ${styles.three} ${styles.active}`}
      ></div>
      <div className={`${styles.WelcomeBackground} ${styles.four}`}></div>
      <div className={`${styles.WelcomeBackground} ${styles.five}`}></div>
      <div className={`${styles.WelcomeBackground} ${styles.six}`}></div>

      <WelcomeNavbar />

      <h1 className={styles.WelcomeTitleText}>
        게임을 통해 특별한 NFT를 소유하세요!
      </h1>
      <h4 className={styles.WelcomeDescriptionText}>
        게임에 관한 설명 텍스트{" "}
      </h4>

      <img className={styles.page3_cloud1} src={cloud1} alt="" />
      <img className={styles.page3_cloud2} src={cloud2} alt="" />

      <div className={styles.page3_gameDisplay}></div>
    </div>
  );
};

export default WelcomePageThree;
