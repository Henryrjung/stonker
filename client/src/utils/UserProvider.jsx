import React, { useContext, useState } from 'react';

const useUserModel = () => {
  const [user, setUser] = useState({
    id: '',
    // first_name: '',
    // last_name: '',
    email: ''
    // token: ''
  });
  return {
    user,
    setUser
  };
};

const emptyContext = [null, () => {}];
const UserContext = React.createContext(emptyContext);
const UserContextProvider = UserContext.Provider;
export const useUserProvider = () => {
  const res = useContext(UserContext);
  return res ? res : emptyContext;
};
/**
 * Provider Component
 */
export const UserProvider = ({ children }) => {
  const userModel = useUserModel();
  return (
    <UserContextProvider value={userModel}>{children}</UserContextProvider>
  );
};
