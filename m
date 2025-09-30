Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [45.145.95.4])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7DBBABA2D
	for <lists+cake@lfdr.de>; Tue, 30 Sep 2025 08:10:02 +0200 (CEST)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id 876C070D764;
	Tue, 30 Sep 2025 08:10:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
	d=lists.bufferbloat.net; s=20250711; t=1759212602;
	bh=PId2uLdXNrMJb/MryGNAr7FueL6jlE4MTzA6G/cTXFE=;
	h=In-Reply-To:Date:Cc:References:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From:Reply-To:From;
	b=Y10/0kvYv01E0csc9wMzoVpumyTIbE/mS4o09CVvQQlmLd/6AT0UF4eD8O22d3iX6
	 aMlueP5E3wNadajVIOrwu0iZyOaZ/uW/c9kOJ7lzvh/oozkHsA6kV5oT9j6JLBGw71
	 Q/pIGhyxnyZhULgIyIP05lTPjv1BkTBe7ObLDdKDXANlD55HijC1CCZRLVPlNv7+A9
	 RToIdnZ3MgG35WCtYHejqPchoWAFuVNe5MKXmmi/69sWd4LAuaIdCkIv63n+pRbQH9
	 ZsPN0t63uLXciZMblZzmElh3HyJcybVfu3PKjoVAenkYf36b9lTqLLLYh6oprLT43x
	 EhasqsdvxUHnw==
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1759212602;
 b=dS5cfvsTo56Cn7JufcogkbCRU1HI8MAUd0UxLBTEON85M/VdcSPcJoyT0hdO9sOm1TE3s
 sosnIip/6rAOeppJ5GtHVnhZVIQSMddQ7ox8QJRwi0J2/JZIgRZtzfnsZAYWJB6Ua0oWUEx
 SiZ6mb1ts7NbBM/UoVpEXK16qX1k77E=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1759212602; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=sDMCZLJzoPozeQRSrDBHnSJ7elebkSfKsnju5LmACkM=;
 b=veYkODXpWpHW9QQNCvgeL6lYv/0POvMHy7N0v7fiX03zYeRTDrJC5h5+vQrz65XKtXJAl
 3hSIu/XyvOAUKK5swnX5ZGG/MNsjYDDQLtTWbT8sY+6OcqweU1FdW4+2LCd/4J5B36XWjFI
 Ts8Y4eGwmMtDJnH98BiHYVGMVPyDFok=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmx.de header.i=moeller0@gmx.de;
 arc=none;
 dmarc=pass header.from=gmx.de policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmx.de header.i=moeller0@gmx.de;
 arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmx.de
 policy.dmarc=quarantine
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	by mail.toke.dk (Postfix) with ESMTPS id 0F93470D748
	for <cake@lists.bufferbloat.net>; Tue, 30 Sep 2025 08:09:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.de;
	s=s31663417; t=1759212598; x=1759817398; i=moeller0@gmx.de;
	bh=n5uz1RcbPXVUR03Dn1WSJ/fYA7BKLOzc+R36ouoRFZU=;
	h=X-UI-Sender-Class:Content-Type:Mime-Version:Subject:From:
	 In-Reply-To:Date:Cc:Content-Transfer-Encoding:Message-Id:
	 References:To:cc:content-transfer-encoding:content-type:date:from:
	 message-id:mime-version:reply-to:subject:to;
	b=Hud5PwpfH7L43TG02Svxs7p+tlXR/ZzF1QdaXjll0RJH1yywdozjXW9UD62j882h
	 U/pQfCcvOBBCZKe0AX8UZqAI2/Uh2DnsELtfrNeuddOYj4PRNSvng4WZ8CFfbGnKr
	 r7RAkAtriokyaE8Y9wV/BqFLuSxZr1py+f2Q/jHtU+drLfIzrwnBRj/t6+Zi7+Qwg
	 nGwVVHfDjvVBF5O2I3G70Y9PKdU5FKPx1fE0ec5V78rTETsBisMMlJwZvNjM2sjeG
	 ihxbPm9QWZox46TG8DXHQiGt0SCSfx+9ud3LNr2V+pRyc/XWyGBKGG/Pi6CrksLub
	 DnJXykBzJzePV8pRhQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from smtpclient.apple ([134.76.241.253]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MCbIn-1vBQ2Q3XmN-00DzeM; Tue, 30
 Sep 2025 08:09:57 +0200
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3826.700.81\))
In-Reply-To: <962896BA-6EE5-4815-B6F9-AC50B7252642@gmail.com>
Date: Tue, 30 Sep 2025 08:09:46 +0200
Cc: dave seddon <dave.seddon.ca@gmail.com>,
 David Lang <david@lang.hm>,
 m@jaap.pro,
 "cake@lists.bufferbloat.net" <cake@lists.bufferbloat.net>,
 Frantisek Borsik <frantisek.borsik@gmail.com>
Message-Id: <C48271F4-4ADF-4FCA-ADA8-72C4B74D1091@gmx.de>
References: <alpine.DEB.2.02.2509280400350.14652@nftneq.ynat.uz>
 <2064666241.42029.1759061544846@app.mailbox.org>
 <alpine.DEB.2.02.2509280523210.14652@nftneq.ynat.uz>
 <CAJUtOOj-FfPic8FPjy-QneCsvbtwtn4Zsxs+1yEsUqytEOEheg@mail.gmail.com>
 <CANypexTvXAdY577pxorqCKL45av3gw+fdupO6xr+gN5p=Wxq=Q@mail.gmail.com>
 <962896BA-6EE5-4815-B6F9-AC50B7252642@gmail.com>
To: Jonathan Morton <chromatix99@gmail.com>
X-Mailer: Apple Mail (2.3826.700.81)
X-Provags-ID: V03:K1:ns9v/+pyXSi9sadwi8qF/xotK9mKRWwp/vRVxGk9hPM6uMQtzOk
 kYHjgu2nROJRP7TX6JEEVdQQnOrYEgkh6zHgVUhkIVKr9Ds15aOwsG/38IDa9SrOZpK/e66
 +8HlsAjsMXeJU50FbUl5FyCIUMfE13ZQA145wfSMZ8aDmu507sWKg+wHd4JdVzRnvIzYSSQ
 tElwQfyfnX4G5CPUZqaWw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:8tYFBvY1Xp4=;UHTQ+U4VvFlCRsHpZCGPOlP9mq2
 oY+3de3gbgqxW4AP4denbiHk6JjVFVxzPTaUjMoJXV+VucAIkjBBM4Qhfx7l1B8BEtx3lkyNu
 4ReIQoEwSrXaW0pEmGD6ltx6qtw0RsDg5E6PRPSP85Dkt8t5UykGp2+1vxviXEVgI9BGy7oHx
 lN4kymEgAGv+hmyXvb2JIcXEPVXQkFRCEc9NNQrz8I2KHQxUFxTtKIHXHutrfxCwJ+iql1+OV
 VytjsUEwWmn/MHoJ+NmC3hXbSjVLvLnsJRzF7myRfikl2PkH38REHtq8t0KoxcbvN+iWvTpBn
 QyBzxDPxq8hHAtCx/yAPRSI4mAJ5ghXYkLlciCIMc8KiUiRuvR6ND8XyXXs0SR2JGuV+u1ok1
 cfo4iWTui3PLO1zcDO3HBBcswyYMLOBAUVRtDpWbZ/nrXPQ7GUUxHgvRBGLc4bJWoPx84e9UD
 L0ILE0LcjLA+iUTdwsiBghaJ/8B4uytaTPXJbr0nyfQe6mB2BcQZPnju5VgszlCjfg2U4dSf8
 8plDnMh5K71x3Ab/Qt/oDX/FYKEiTgGY9nSM1SoE2q2UCD9yzNv+wWL9IvkBmcsxajeJ26+9m
 oOJzhRORsHk/cD9wr6Pv0wFq98fkiX+hCrr18FbilD45PD95wY8FV4PRsf+XRpVSb6Ki1lZEu
 /fD5Q1Awr+usjg8DeBa5+iWUlMWxr53XJer+2rq1Kz27FJU6TxjwniwaXQsUKVbPrp695XQzo
 nr0wnJCN1dp9FrOCTBNtD4Y8gVa0IFVyQ9Gm8nMKhiwdKseUtT2mU02ykrHo2LJ09Fgqq6Hnv
 pHui61YuwrThh6NdhU53bPeleEjOiOrWipn8nz33PP5jCk+0V0ybJInt65WqLrZmz2o/5UhQT
 UMLBksDCbj5okC3VbQkDx478RDCWFgW7Rvq3Jb2hXfDapYJkCvceFzcRTWpLa5D7gcqQxjwuO
 +UYHs73nJJKQTpAUZoNU768WMUT2RP0rMKlIaa6L567tVCw4tJLEy2HVulsJdIl0dX5ZozKNS
 z23hzaYGaW6rMdUvw6wPkrsJ1pewsVAFcY9UszblNyiJnQTZB+9sIP9rtIcaMP+nuyIKw7LQs
 /zyJJNtbBN4xfV9UgpCGGfUHdtV4riDGxvVW4MxPISIQefk5Yluik6zwtBSydYgX8GjjVbsLo
 WurKiD0/4yEXFIpoWqgd7YYyEfNUjUEG27+G0+ziKclDBDFaqi209/abv322W9TF211AxTO2U
 2pMGM+x+/GioxVyuXkCt3vy9B+FaiTu2971g5wtMPSPRJEMvRpqJOUh3trJh2orPr3BbFY38Y
 9abH39ufNfPRCcah56R/d4QBwqfVxeg8C1AhCh3xDMBK3ieW8hSh6JqxNI6ccTd0DAVzZ8OmC
 qT6bvD2x4eNxQynecALkX7CdZvmahLu5L15+J1fwiLjb5pkq+ADlsV7DPLA1yd2qeL9kHz8JJ
 PHhsjetV1t9PBjyX2IpN4DPWP0MuxXqoztJBjSZkdnkLqT0XVhniHlhqYEwADM3P1lwlL2HrX
 tTnhINaeFjw6Z5hRZ90+2cEHUB6GArR8zTX0L7yArmEGTtZdI10UYSrXkBV70IDjVSpu9tD7z
 TeBNv0HTd2kgDomKs4VelV/EiRGFT18pySHoJBrO7K3lSIUFd1RVjXxxFU+0+KlBHJWGBVfBV
 1/Ilb+jSbJHbWbWlRn1ho3D7BHNgGpHYRrmjwpfUXi2/kOVIWAix2BQOwrDVCXLwXgAWUr4Is
 ik7VyeYg8og6zzD7DiP75q1kAiGj9FlK+o3F1qVyddq1HgI7oScxkfG7be9CMWqD9UDAHHhsu
 /noFaVI+ImeYWFqSuLxqwIobaXQfiMyI5Cfh4CC5ZplWH6aTymitQgBJC/q0HcTxM4CDTlvDJ
 YSyex5Roh44axZLC7UxJmcOARNnCf3FbaLT9s07mgyN6W5C8AZwdwKebgoPUvRSZHUjKs6ZsO
 GBQJSgygKpAm3H6erwNL8mlDDzbbK78PZNvg3leR52XmvV8NSzIRSc9W4M1GpO7TNJmAE86ys
 CPi75ZUPpW5SIsiIcO5IfWXXoWEbocS7dD2KiM3mvWkrGpmRyp3Dtqq7UOMFY3hxuD4znoRpy
 gOQCKkecXe4ZagRgcsYb8o/j8y4A0VwjdqwFWulIRHtcbSbsp2AeH39NcKiK3AkwafNaILLsm
 BJW5dDaY1cqjDJwqQfdUcxuXpzKPRGRPdFjEe3qLVCcIe0+6HybK8SchcTCUEIdTFDtT+QX8x
 ZFr3JuKJQ27pIlSJUaQMQMyKt5p5xmQaWA7JzfsjcbvtGtrf0yZy3cxJ7r/vmkV+X6BAts85A
 HSBrVnASHTKb3NG4fGP1zjFUJ+/ELnjTPIW9anvBdP9shPv4kYpxcJS6oLThNQpPrO+X1Ogb1
 +bRDkKcMHFuSxqNrsJbFrbbaK26NdCmiEwEsopp47QJ9Tf9UE86Q5tKCbKGfe/PinJxXIbIJs
 JvGx27GYuCbs68SaeFXQJgM+Eb2VapfvC1yWbpnYS8nVUfRcM9/utPK3Q5ezCqjt0Xl060X3N
 JBvTDeLijugzvKqr8FhywnBCCIq1GTWNHR7chYyPhpBT2btAZYDFf0ryqqbF1zxsHnHB2hjjn
 U0oacY0n1AA/RdEpSxgxW+cNuvJSc3qRYwL26mmhPZcJiFvx+pOWVqO3iehIIpg7TWb0gTRHJ
 ilxPzwDuzSvkTxpNjy7tSawUXujlsnoDp1AMY5gc3BAusdqL/H3n0hyi8w1wH9zfrClYue5F/
 ZRM5W/g0iDbxozJzppbw4vqLAtdiIssQfVMMcuO8j4BPveoD4E9f/fgqSwhoMzCmFsoHGWEiv
 6wmXjvvlH333ASJ1pEYtiH0AkqGAP0R1yx/Bo3gkKvOxDzkx1C2O0Sl/ecnvUq7Km7ivwW/k8
 OWPtrlgJQG+e/twEF+pvTHYPUo9bJgSwhwOGfQXTw41zy7pb9rs+vcxcsS+3lG7BFMn6nBARU
 BLSlVfnUVzBULmFLD6OrmAiEOw4YmxQrjP7+b47QG/UDP7QihjF2nQ4R9cl372gUCTudWzq9A
 uHosBptVA7/uUyUAj/DHxM3qqzFF7oP/Myu0cV2fsfj3t4mSjj5fDn7XW3ato5PjPqux0tj6t
 hd8eXsmccUbjAZR45fVrVhYqauAwuq9uzvx1VMr0iQ798l17RiTBm3yy06oWnA+DGyuTGM1jz
 WX2beeAj5hpODIlBM39S4a5oq/R3TH+6JNm0Mebz1X/WSvvtAWG2hIk9C9kIlqBtKM7XlgfDp
 mfq7lJkNUYHcBEKrLoiFqv7lnsqW9wm7Gw7eB28GQMGnR0PTTeFsKNw9BX9F0+XfdyQez8A//
 Pjxnuf3lVg/Hdq+8q9iQDXu60ByquUFvMz6oNYF3clQdUpcGAxPiZjQfSBlEgJlEWx1TXTZjS
 HiXpNZSlduOvfhG1bdGnrTlcpUSzBKfnIBh7ZoVF27coLrPqFdwA8GO6kooexZGOsqE6L6K8U
 7TGhlBLbmPhrw7ipdQciarJUqOzoZEnCUanoBzu6Ha4BnDoqLFDB7SrCukGJ0QwDLK71hi5+k
 WlWa0jsRwn+4bCwVbInSVR8kUWOGM5qEM3N0/qP9chm1Jk7g4pVCpjXng3yJ7YArmeWT36nft
 Jp3/YLEwtQFUeW3PBq0pPYPN9pWjeiEpYbYJ5HvZd+8uIFhgRys7WyRof/Ch38uthCpw2LeTz
 NdBAKqspD+ME795E5z0YxBv7NXRUXcmhtYVSiuTE2HqUpSBiwAYC/IZzJOSjQx7smr2Dnn7cb
 ogGJgYUPXBgZ+W+3m5z+HJh7mUDR2V2pjaKzqvryyQKlmo3ikD7vY1SZbOXy1FIdcLf4A814R
 6HZzFddg/PTBWnFnfGzheAeTJxdtz0gbL1yqrrg1tvz8uaJdCP1Dkkkqkj8N80IeKUfQ0hiij
 L1+M4rEsyKI8b9Hu4IvXlGXLI0TfebqQrAJNf2C9qO4JgKCNx2k0CJCsy1DAxiikI6vOhujdC
 vzGQXFxulZ0rI0U825qhMVvgaCV2graElzzCdgLvwwKwK8oKEizZ5TWaeQ2nw3832UPXAcKQi
 Cbm2Fk4cZIkKrFXc6W+RMBl0TEYVJyCYc1puBnddwavuRZvCchO51eANxkuLK+KjtnFFndD15
 T7Phzxu/Up8Wkgzw8iNnn4Jx4ASipk6FjHHhxW9J3RYKEkt4GqyNKU0CZ1qSQKnFtVSjmy90F
 0ClE/1YEsjwn7StI2RkXTCxPshoHr02devsOr4bHaLa/PcPaN+7ZTukLzs42Ce1cG85d8doWO
 vdAeaJRBkOqWpVGRxfZ6On/10KNykyZ0iqhkNM29xbMfUtCwfrTap3OpUuK41xsvVBM3ayHqf
 hYrdg1sZi2JZRGPrpX/e+1v9S3y3jUAdLe5kN9VCWpKvEcpabzJRpRsBs4sOth4mSKUNAuzRP
 xeeHbRCoMqj847snqWi1mJFkzOhl+adQu9jay2Z0yw4GVjmG7E+TFISvmEndkItei6kPzgugI
 oH8kTgwbOy0kKmp9psDOixFBdkkMkqdxjWIvlMBYCu9deir8xnnp0Tu2gpTerbcqUB/5SkqeL
 TjcosFMHbnz2t45d4oKB+euFOl5j6Jq2oTRZ83lLVqykWj6h0A1QTJ2pNl2O0gTSSmRVn3sXS
 iNUoU8UDbckfQ+6vjslTEgQxdkDDkb2uvrX8A+SDmjx7jUwF+N52TfQYEA5MvURCrcYWaWwwL
 xlDWp6hF6zLpU5jyNYYyLk/nN7HEpK9DG7XxARy96F7pGFNwbEJ9KzPloNCe8rFMZF+Nt9fTL
 PzYKYZq+aGyZL/H797AcF6R4rmpR1ChW6+4HD79BUPLY6d4kbAtl37KpY7jJ2qfMQvjbL/pGS
 JKrL9jq+aJN2i571gFsDZSGHQmlHszJ67fo43F0MVHpOa/hBWXhU1R8tapdxCHGhslVPg2gvQ
 HvHCgOIXS5Y4c7KqWkVJFyCFI07Lb8mN0QMK/8WZGoN07O03HDZToxyzhR3IgQcCxDTNrUzWF
 SQky3qCMF50UUtpzcyKmpxjx1lxLv1fRMB/qpbgqtJysyg32DzUi7l4iJ3Of9q+b25VOMKnkD
 wuL2zCh0vs4CIQ3ihEDYVoWXTc=
Message-ID-Hash: 6ATH5IOV6SQYLEERD2KEPDQE52V56COD
X-Message-ID-Hash: 6ATH5IOV6SQYLEERD2KEPDQE52V56COD
X-MailFrom: moeller0@gmx.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: help request for cake on a large network
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/C48271F4-4ADF-4FCA-ADA8-72C4B74D1091@gmx.de/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
From: Sebastian Moeller via Cake <cake@lists.bufferbloat.net>
Reply-To: Sebastian Moeller <moeller0@gmx.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi Jonathan...

thanks for commenting on the details.

> On 30. Sep 2025, at 07:18, Jonathan Morton <chromatix99@gmail.com> wrote:
> 
>> On 28 Sep, 2025, at 8:07 pm, dave seddon <dave.seddon.ca@gmail.com> wrote:
>> 
>> cakeConfig = {
>>   Bandwidth = "990M";  # We currently have 1Gb/s, so this is our limit
>>   OverheadBytes = 38;  # Ethernet overhead (preamble + inter-frame gap + FCS)
>>   MPUBytes = 84;       # Minimum packet unit for Ethernet
>>   NAT = true;
>>   FlowIsolationMode = "triple";
>>   PriorityQueueingPreset = "besteffort";
>> };
> 
> It's perhaps worth talking about these parameters a bit.
> 
> You probably realise that the overhead compensation should be set up for the physical bottleneck link.  Not everything is, or behaves exactly like, an Ethernet cable, even if the connection between your router and the transceiver for that link physically is one.  Or it might really be Ethernet, but with extra headers patched into each Ethernet frame (in a domestic context, that's what PPPoE partially is, but VLANs add an extra couple of words to a frame too).  If in doubt, err on the side of assuming there's more overhead than you know about.  These parameters are, however, completely inadequate to describe wireless links, especially WiFi.

+1; over estimating the true overhead (or MPU) slightly has negligible cost (a small reduction in potential maximum throughput), underestimating however can result in noticeable latency under load increases. Some years ago, I retested my assumed de-bloated DSL link (after a few months of uneventful operation) because somewhat felt just not right under load, and lo and behold, my ISP had increased the overhead by 4 bytes (a VLAN tag) in the interim invalidating my overhead settings by 4 bytes... (That was with an ATM/AAL5 link, where measuring the actual overhead is achievable for end-users).

Long story, short: if in doubt rather add a small safety margin to your best overhead estimate... sqm-scripts came down on recommeding 44 bytes as default. Will not cover all possibilities, but goes a long way in covering those encapsulation seen often on ebd user internet access links.


> 
> I'd also like to remind everyone what "triple" flow isolation is.  It's a way to get something like host-and-flow isolation when you're not certain which side of the link the hosts that want isolating from each other are; there's a heuristic which effectively decides, dynamically for each flow, whether to treat it as being src-host or dst-host isolated.  I put it in mainly to serve as a sensible default, since blindly choosing one or the other would get it wrong exactly half the time.  I don't really like seeing it in a config file that someone's actually worked on.

Mmmh, we might want to tweak the tc-cake man page then to make this clearer? ATM it reads:

dual-srchost
Flows are defined by the 5-tuple, and fairness is applied
first over source addresses, then over individual flows.
Good for use on egress traffic from a LAN to the internet,
where it'll prevent any one LAN host from monopolising the
uplink, regardless of the number of flows they use.

dual-dsthost
Flows are defined by the 5-tuple, and fairness is applied
first over destination addresses, then over individual
flows. Good for use on ingress traffic to a LAN from the
internet, where it'll prevent any one LAN host from
monopolising the downlink, regardless of the number of
flows they use.

triple-isolate (default)
Flows are defined by the 5-tuple, and fairness is applied
over source *and* destination addresses intelligently (ie.
not merely by host-pairs), and also over individual flows.
Use this if you're not certain whether to use dual-srchost
or dual-dsthost; it'll do both jobs at once, preventing any
one host on *either* side of the link from monopolising it
with a large number of flows.


Reading this I would have the impression that selecting triple even on a bespoke config would be fine, no?


> 
> It's better to explicitly configure this rather than using the heuristic.  The tc-cake keywords are "dual-srchost" if the hosts to be isolated are upstream of Cake, and "dual-dsthost" if they are downstream.  In a typical installation where two instances of Cake are managing both directions of traffic, one will be configured each way.
> 
> It's also possible to disable host-isolation entirely, using the "flows" keyword to provide the same kind of flow-isolation as fq_codel (or most other forms of FQ) does.  Cake can also provide only host isolation, relying entirely on statistical multiplexing (and the beneficience of AQM) for managing flows to each host; the keywords are then "srchost" and "dsthost" with the same meaning as above.  If you are seriously worried about the number of active users at critical moments, this could be a useful option for you; the number of hosts Cake can fully handle in this mode is the same as the number of flows it can handle in the normal flow-isolation modes.

I would really like to see some tc -s qdisc output from this network under load, as that should be informative if any twaeks are necessary at all.


> 
> - Jonathan Morton
> _______________________________________________
> Cake mailing list -- cake@lists.bufferbloat.net
> To unsubscribe send an email to cake-leave@lists.bufferbloat.net

_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
