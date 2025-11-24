Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DBEC8138B
	for <lists+cake@lfdr.de>; Mon, 24 Nov 2025 16:04:29 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 8F2339C37B5;
	Mon, 24 Nov 2025 16:04:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1763996644;
	bh=WHy5sxemHfzBCFkT8dRsaxU5/8RfPPL4dDQ1cEBJvLk=;
	h=To:Cc:Date:In-Reply-To:References:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=R0hoc2G8WIXLIDDcitW3ZbuyfV+nb67UEFVPWO4/BuU71egrSoExMBjpPrh372ZNP
	 agtqygahoN2YJYi8fdABJaBqfE4AeXSaqTcAlY6Enyhag2PPemJ59YaDOKZ3Iy6QTs
	 q5r3ehcN0cp8LW+z8gJeNj7umaPTWOz7gyh0UMGYcmKxiZj81KVPW9udt2f68PjNJo
	 ecGz8jd0RoEOZEck9Wb291aO2q5gkRCpTH6ekzTDtAQ7cC5573ko9td4LZoX1Byu6u
	 ZF/W3xpUZzHt9e/Wz/dlo47hK8rmsd/kQ+9v9RvVm28h15lx9YwYadvT2Ye8rhW3mv
	 qSHXPkJcR3WSA==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1763996644;
 b=BIfZr9gxbDRVCNZCEm5tKD+NDJa6qj3NUP2qP8NOLqsKLw9xgnV4Std+CixwNa5TBjR+/
 glrebQRsWXf/UKv966kXcLPESNSdsq8lUe5TSdIwu4OiZEx4mrd9v9cgTtpUWB06CjHciSZ
 r2qwUyPR5R0nW6vXkCiVj5E4rl+KFt4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1763996644; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=WHy5sxemHfzBCFkT8dRsaxU5/8RfPPL4dDQ1cEBJvLk=;
 b=V6GJa2sGs/c3UCLRbVBu3uBwork0SbmAgQ60zKhD/C7qjQKPlFRoPHZA0ogAujrz55zGn
 ziet481lnuoHjL9k7ai9HtxmgVFkklWhm5//JZdZD40GQwPjHlfJGlOg9+7WlXrz6k9++L2
 ZiJ8+8Pr0M/qgAB+lN3OZB7pO34z3sU=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=redhat.com;
 arc=none;
 dmarc=pass header.from=redhat.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=redhat.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=redhat.com
 policy.dmarc=quarantine
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.toke.dk (Postfix) with ESMTPS id D5D569C379C
	for <cake@lists.bufferbloat.net>; Mon, 24 Nov 2025 16:04:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1763996639;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Fab3ghcqMPmabLPn/2RxPN0f5b6T/WzY219cWGaIJhI=;
	b=ZQE9lvlOZcfF1+FOqTdJlrsFeFDGR5WYa65GJi4fNgUE8ydSMpIiqZii9EmqOOjp43AAs0
	L78cRCoJSRPFdjFxojBNIkXJX8BL8ZSWyzgI8Z6sD9tghv2sg/ovYRfoHmjFBuIVO1mdQB
	TROosYgMAhQreWW+C1VGnqCuO/wAk0M=
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-564-WsvISMFIPbagOCiczIol1A-1; Mon, 24 Nov 2025 10:03:56 -0500
X-MC-Unique: WsvISMFIPbagOCiczIol1A-1
X-Mimecast-MFC-AGG-ID: WsvISMFIPbagOCiczIol1A_1763996635
Received: by mail-ej1-f71.google.com with SMTP id
 a640c23a62f3a-b73586b1195so221948066b.3
        for <cake@lists.bufferbloat.net>;
 Mon, 24 Nov 2025 07:03:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763996635; x=1764601435;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Fab3ghcqMPmabLPn/2RxPN0f5b6T/WzY219cWGaIJhI=;
        b=iHdVNCbQrwJ8opHrm6XMUnR2Y495n8VtoX6spm6C4vT5Yd6IbRLOPzHKYrb9ea4Tn+
         rOFn1Vtr1hfG4XsAA7VLKkOHUREoR2divzBFyQgxCTZlcsDX9XmrJDHPcvyo5Pm9eYYJ
         64W8SL4Hneb1j8i3vHGQG9ERFkLdpaY2LjuR362WTVCD6bPJefrlI0I9bMAI5x+w/9CZ
         p7MRdewW1QDuSHK6AWa7c9IRgrD6roJX+HncBVsJeP/nLIwBRYbDooLKuD5+VOLunUqs
         JG8dHtPsqJdQbSEWMQUBHhFUoGnADZEfRVRPB8pNuVXv8hjfMKNU+jsw13xeMahWgDPX
         CwfA==
X-Gm-Message-State: AOJu0YxXQwcfQh0jyTT1MXLePaU00KuiMq5nFnAJEQlpr2otngUK65UT
	s+MYk1m3nYAS7Bazkz6R7f3jEjmXm0KfTyS63rxU75tO+3BO84cLavbfpM583g+ivJonhHvJg/3
	Y3IfdNrVSS28eCc+rPiqxwOH+HHaAzFNQcli3XhLxpde9SXn1k4DYbuLrbcoYU/8=
X-Gm-Gg: ASbGnctCS5LjZ1gn7lhgbgN2P1mF+yWAeV8EZVqEW8ZGxBVsuNdvg1+nbUOiHJJql6Z
	MoI0YbNXgxfx1fp7kvQFKxjXXmEq2g3Hu7dLWPvP6pnZtFh8P3hnS79zEoeKBDpOJOjfULT0Du7
	NpRLF5EWTe5F3AGH+lLYBYtb/1avLwznTm7gHwjEqX0S5Pr2l5DuvaYxIW+AnO/T7GnnFwCDUYw
	B8eolYS3vwQCL77BD/4cTRSm0+2uhus/aRQKfgFftBNnI+qoVf3y5mczgyFaH0t0i0lVfOUNDNo
	2A/Q49JX3e4+QmU3Dt8ynmrcy7hH7M83PVz5acs2AE58dapPCuekop1Ud4NRK6ug6Z5dsCIvll9
	omy5efoq3IIdMFpDcnBzmD6djknLzfpNVdg==
X-Received: by 2002:a17:907:c1a:b0:b73:9937:e96b with SMTP id
 a640c23a62f3a-b7671891d69mr1336702766b.52.1763996635137;
        Mon, 24 Nov 2025 07:03:55 -0800 (PST)
X-Google-Smtp-Source: 
 AGHT+IH7AoO5zFiHMXS9tyTRQTlOiu0XJMrWIaRCrzfV15suEJEy0uyvFxhhi7/1+AhlinnnFGLzHg==
X-Received: by 2002:a17:907:c1a:b0:b73:9937:e96b with SMTP id
 a640c23a62f3a-b7671891d69mr1336698466b.52.1763996634698;
        Mon, 24 Nov 2025 07:03:54 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([45.145.92.2])
        by smtp.gmail.com with ESMTPSA id
 a640c23a62f3a-b7654ff3fc0sm1337659966b.46.2025.11.24.07.03.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Nov 2025 07:03:54 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
	id 7FB4632A807; Mon, 24 Nov 2025 16:03:53 +0100 (CET)
To: David Ahern <dsahern@gmail.com>,
	Stephen Hemminger <stephen@networkplumber.org>
Cc: cake@lists.bufferbloat.net,
	netdev@vger.kernel.org,
	=?UTF-8?q?Jonas=20K=C3=B6ppeler?= <j.koeppeler@tu-berlin.de>
Date: Mon, 24 Nov 2025 16:03:50 +0100
Message-ID: <20251124150350.492522-1-toke@redhat.com>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251124-mq-cake-sub-qdisc-v1-0-a2ff1dab488f@redhat.com>
References: <20251124-mq-cake-sub-qdisc-v1-0-a2ff1dab488f@redhat.com>
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: gJ07ARu8vuJlaqq7P_Evz_yunXldmZsecVERLKWP7LI_1763996635
X-Mimecast-Originator: redhat.com
Message-ID-Hash: SXD63BYXBJ35YBWTDZ2N7OUS3UAG4UKQ
X-Message-ID-Hash: SXD63BYXBJ35YBWTDZ2N7OUS3UAG4UKQ
X-MailFrom: toke@redhat.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] [PATCH iproute2-next] tc: cake: add cake_mq support
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/20251124150350.492522-1-toke@redhat.com/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: =?utf-8?q?Toke_H=C3=B8iland-J=C3=B8rgensen_via_Cake?=
 <cake@lists.bufferbloat.net>
Reply-To: =?UTF-8?q?Toke=20H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

RnJvbTogSm9uYXMgS8O2cHBlbGVyIDxqLmtvZXBwZWxlckB0dS1iZXJsaW4uZGU+DQoNClRoaXMg
YWRkcyBzdXBwb3J0IGZvciB0aGUgY2FrZV9tcSB2YXJpYW50IG9mIHNjaF9jYWtlIHRvIHRjLg0K
DQpTaWduZWQtb2ZmLWJ5OiBKb25hcyBLw7ZwcGVsZXIgPGoua29lcHBlbGVyQHR1LWJlcmxpbi5k
ZT4NCi0tLQ0KIGluY2x1ZGUvdWFwaS9saW51eC9wa3Rfc2NoZWQuaCB8ICAxICsNCiB0Yy9xX2Nh
a2UuYyAgICAgICAgICAgICAgICAgICAgfCAxMyArKysrKysrKysrKystDQogMiBmaWxlcyBjaGFu
Z2VkLCAxMyBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQoNCmRpZmYgLS1naXQgYS9pbmNs
dWRlL3VhcGkvbGludXgvcGt0X3NjaGVkLmggYi9pbmNsdWRlL3VhcGkvbGludXgvcGt0X3NjaGVk
LmgNCmluZGV4IDE1ZDFhMzdhYzZkOC4uZmIwN2E4ODk4MjI1IDEwMDY0NA0KLS0tIGEvaW5jbHVk
ZS91YXBpL2xpbnV4L3BrdF9zY2hlZC5oDQorKysgYi9pbmNsdWRlL3VhcGkvbGludXgvcGt0X3Nj
aGVkLmgNCkBAIC0xMDM2LDYgKzEwMzYsNyBAQCBlbnVtIHsNCiAJVENBX0NBS0VfU1RBVFNfRFJP
UF9ORVhUX1VTLA0KIAlUQ0FfQ0FLRV9TVEFUU19QX0RST1AsDQogCVRDQV9DQUtFX1NUQVRTX0JM
VUVfVElNRVJfVVMsDQorCVRDQV9DQUtFX1NUQVRTX0FDVElWRV9RVUVVRVMsDQogCV9fVENBX0NB
S0VfU1RBVFNfTUFYDQogfTsNCiAjZGVmaW5lIFRDQV9DQUtFX1NUQVRTX01BWCAoX19UQ0FfQ0FL
RV9TVEFUU19NQVggLSAxKQ0KZGlmZiAtLWdpdCBhL3RjL3FfY2FrZS5jIGIvdGMvcV9jYWtlLmMN
CmluZGV4IGUyYjhkZTU1ZTVhMi4uMWMxNDNlNzY2ODg4IDEwMDY0NA0KLS0tIGEvdGMvcV9jYWtl
LmMNCisrKyBiL3RjL3FfY2FrZS5jDQpAQCAtNTI1LDcgKzUyNSw2IEBAIHN0YXRpYyBpbnQgY2Fr
ZV9wcmludF9vcHQoY29uc3Qgc3RydWN0IHFkaXNjX3V0aWwgKnF1LCBGSUxFICpmLCBzdHJ1Y3Qg
cnRhdHRyICpvDQogCSAgICBSVEFfUEFZTE9BRCh0YltUQ0FfQ0FLRV9GV01BUktdKSA+PSBzaXpl
b2YoX191MzIpKSB7DQogCQlmd21hcmsgPSBydGFfZ2V0YXR0cl91MzIodGJbVENBX0NBS0VfRldN
QVJLXSk7DQogCX0NCi0NCiAJaWYgKHdhc2gpDQogCQlwcmludF9zdHJpbmcoUFJJTlRfRlAsIE5V
TEwsICJ3YXNoICIsIE5VTEwpOw0KIAllbHNlDQpAQCAtNjY3LDYgKzY2NiwxMSBAQCBzdGF0aWMg
aW50IGNha2VfcHJpbnRfeHN0YXRzKGNvbnN0IHN0cnVjdCBxZGlzY191dGlsICpxdSwgRklMRSAq
ZiwNCiAJCQkgICAiIC8lOHVcbiIsIEdFVF9TVEFUX1UzMihNQVhfQURKTEVOKSk7DQogCX0NCiAN
CisJaWYgKHN0W1RDQV9DQUtFX1NUQVRTX0FDVElWRV9RVUVVRVNdKQ0KKwkJcHJpbnRfdWludChQ
UklOVF9BTlksICJhY3RpdmVfcXVldWVzIiwNCisJCQkgICAiIGFjdGl2ZSBxdWV1ZXM6ICUyNXVc
biIsDQorCQkJICAgR0VUX1NUQVRfVTMyKEFDVElWRV9RVUVVRVMpKTsNCisNCiAJaWYgKHN0W1RD
QV9DQUtFX1NUQVRTX0FWR19ORVRPRkZdKQ0KIAkJcHJpbnRfdWludChQUklOVF9BTlksICJhdmdf
aGRyX29mZnNldCIsDQogCQkJICAgIiBhdmVyYWdlIG5ldHdvcmsgaGRyIG9mZnNldDogJTEydVxu
XG4iLA0KQEAgLTgyNywzICs4MzEsMTAgQEAgc3RydWN0IHFkaXNjX3V0aWwgY2FrZV9xZGlzY191
dGlsID0gew0KIAkucHJpbnRfcW9wdAk9IGNha2VfcHJpbnRfb3B0LA0KIAkucHJpbnRfeHN0YXRz
CT0gY2FrZV9wcmludF94c3RhdHMsDQogfTsNCisNCitzdHJ1Y3QgcWRpc2NfdXRpbCBjYWtlX21x
X3FkaXNjX3V0aWwgPSB7DQorCS5pZAkJPSAiY2FrZV9tcSIsDQorCS5wYXJzZV9xb3B0CT0gY2Fr
ZV9wYXJzZV9vcHQsDQorCS5wcmludF9xb3B0CT0gY2FrZV9wcmludF9vcHQsDQorCS5wcmludF94
c3RhdHMJPSBjYWtlX3ByaW50X3hzdGF0cywNCit9Ow0KLS0gDQoyLjUxLjINCg0KX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQ2FrZSBtYWlsaW5nIGxpc3Qg
LS0gY2FrZUBsaXN0cy5idWZmZXJibG9hdC5uZXQKVG8gdW5zdWJzY3JpYmUgc2VuZCBhbiBlbWFp
bCB0byBjYWtlLWxlYXZlQGxpc3RzLmJ1ZmZlcmJsb2F0Lm5ldAo=
