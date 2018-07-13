import React from "react";
import { createBottomTabNavigator } from "react-navigation";
import { Ionicons } from "@expo/vector-icons";

import FeedsScreen from "./screens/FeedsScreen";

const Tabs = createBottomTabNavigator => ({
  Home: {
    screen: FeedsScreen,
    navigationOptions: () => ({
      headerTitle: "Saga App",
      tabBarIcob: ({ tintColor }) => {
        <Ionicons size={32} color={tintColor} name="home" />;
      }
    })
  }
});

export default Tabs;
