WAR_NAME = CalendarApp.war
SRC_DIR = src
BUILD_DIR = build
WEB_INF = WEB-INF

all: clean compile war

compile:
	mkdir -p $(BUILD_DIR)/WEB-INF/classes
	javac -classpath lib/servlet-api.jar -d $(BUILD_DIR)/WEB-INF/classes $(SRC_DIR)/com/example/CalendarServlet.java


	cp -r $(WEB_INF) $(BUILD_DIR)/WEB-INF

war:
	cd $(BUILD_DIR) && jar -cvf ../$(WAR_NAME) *

clean:
	rm -rf $(BUILD_DIR) $(WAR_NAME)

