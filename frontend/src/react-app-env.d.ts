/// <reference types="react-scripts" />

interface Window {
  ethereum: any;
  Kakao: any;
}

// .env 활용 시 환경변수의 타입도 선언해준다.
declare namespace NodeJS {
  interface ProcessEnv {
    NODE_ENV: "development" | "production";
    REACT_APP_API_BASE_URL: string;
    REACT_APP_ETHEREUM_RPC_URL: string;
    REACT_APP_IPFS_IP: string;
    REACT_APP_SOCKET_URL: string;
    REACT_APP_SOCKET_DEVELOP_URL: string;
    REACT_APP_SALEREADMETOKEN_CA: string;
    REACT_APP_ERC20_CA: string;
    REACT_APP_KAKAO_KEY: string;
  }
}
