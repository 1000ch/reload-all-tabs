PROJECTNAME="Reload All Tabs"

all: prelogue build archive epilogue

prelogue:
	@echo ""
	@echo ">>> $(PROJECTNAME) build started"
	@echo ""

archive: .
	@zip reload-all-tabs.zip -r .

epilogue:
	@echo ""
	@echo ">>> $(PROJECTNAME) build has successfully finished"
	@echo ""

.PHONY: prelogue build archive epilogue
