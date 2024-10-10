#!/bin/sh

echo "Cloning repositories..."

CODE=$HOME/Cloudreach
SCRIPTS=$HOME/scripts

# Cloudreach
git clone git@github.com:cloudreach/OLA-Autobot-Frontend.git $CODE/OLA-Autobot-Frontend
git clone git@github.com:cloudreach/agent-manager.git $CODE/agent-manager
git clone git@github.com:cloudreach/cmz-application-resources.git $CODE/cmz-application-resources
git clone git@github.com:cloudreach/cmz-bir-api.git $CODE/cmz-bir-api
git clone git@github.com:cloudreach/cmz-classic-reports.git $CODE/cmz-classic-reports
git clone git@github.com:cloudreach/cmz-classic-ui.git $CODE/cmz-classic-ui
git clone git@github.com:cloudreach/cmz-component-lib.git $CODE/cmz-component-lib
git clone git@github.com:cloudreach/cmz-infra-resources.git $CODE/cmz-infra-resources
git clone git@github.com:cloudreach/cmz-migration-ui-data-api.git $CODE/cmz-migration-ui-data-api
git clone git@github.com:cloudreach/cmz-precloud-api.git $CODE/cmz-precloud-api
git clone git@github.com:cloudreach/dashboard.git $CODE/dashboard
git clone git@github.com:cloudreach/ola-autobot.git $CODE/ola-autobot
git clone git@github.com:cloudreach/ola-autobot-ui.git $CODE/ola-autobot-ui
git clone git@github.com:cloudreach/ola-importer.git $CODE/ola-importer
git clone git@github.com:cloudreach/ola-slide-machine.git $CODE/ola-slide-machine
git clone git@github.com:cloudreach/precloud-dbops.git $CODE/precloud-dbops
git clone git@github.com:cloudreach/precloud_analytics.git $CODE/precloud_analytics
git clone git@github.com:cloudreach/server.git $CODE/server
git clone git@github.com:cloudreach/sqlserver-telemetry.git $CODE/sqlserver-telemetry

# Personal
git clone git@github.com:ToddEricksonCR/autobot-coder-workspace.git $CODE/autobot-coder-workspace
git clone git@github.com:ToddEricksonCR/scripts.git $SCRIPTS
