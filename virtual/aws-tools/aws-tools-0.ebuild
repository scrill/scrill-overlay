# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

DESCRIPTION="Virtual for AWS tools"
HOMEPAGE=""
SRC_URI=""

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="as cfn cw elb iam rds sns"

DEPEND=""
RDEPEND="as? (app-admin/aws-as-tools)
	cfn? (app-admin/aws-cfn-tools)
	cw? (app-admin/aws-cw-tools)
	elb? (app-admin/aws-elb-tools)
	iam? (app-admin/aws-iam-tools)
	rds? (app-admin/aws-rds-tools)
	sns? (app-admin/aws-sns-tools)"
