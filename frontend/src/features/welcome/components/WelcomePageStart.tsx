// css
import styles from "../Welcome.module.css";
// img
import cloud1 from "../../../assets/welcome/page1_cloud1.svg";
import cloud2 from "../../../assets/welcome/page1_cloud2.svg";
import cloud3 from "../../../assets/welcome/page1_cloud3.svg";
import cloud4 from "../../../assets/welcome/page1_cloud4.svg";
import WelcomeNavbar from "./WelcomeNavbar";

const WelcomePageStart = () => {
  return (
    <div className={styles.MotionArea}>
      <div
        className={`${styles.WelcomeBackground} ${styles.one} ${styles.active}`}
      ></div>
      <div className={`${styles.WelcomeBackground} ${styles.two}`}></div>
      <div className={`${styles.WelcomeBackground} ${styles.three}`}></div>
      <div className={`${styles.WelcomeBackground} ${styles.four}`}></div>
      <div className={`${styles.WelcomeBackground} ${styles.five}`}></div>
      <div className={`${styles.WelcomeBackground} ${styles.six}`}></div>

      <WelcomeNavbar />

      <img className={styles.page1_cloud1} src={cloud1} alt="" />
      <img className={styles.page1_cloud2} src={cloud2} alt="" />
      <img className={styles.page1_cloud3} src={cloud3} alt="" />
      <img className={styles.page1_cloud4} src={cloud4} alt="" />

      {/* <img
        className={styles.welcome_character}
        src={welcome_character}
        alt=""
      /> */}
    </div>
  );
};

export default WelcomePageStart;
