Return-Path: <cake-bounces@lists.bufferbloat.net>
X-Original-To: lists+cake@lfdr.de
Delivered-To: lists+cake@lfdr.de
Received: from mail.toke.dk (mail.toke.dk [IPv6:2a0c:4d80:42:2001::664])
	by mail.lfdr.de (Postfix) with ESMTPS id C22CDC8FEB9
	for <lists+cake@lfdr.de>; Thu, 27 Nov 2025 19:27:42 +0100 (CET)
Received: from [45.145.95.3] (localhost.localdomain [IPv6:::1])
	by mail.toke.dk (Postfix) with ESMTP id E01BD9D55B0;
	Thu, 27 Nov 2025 19:27:41 +0100 (CET)
Authentication-Results: mail.toke.dk;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20230601 header.b=ahJWf9Z5
ARC-Seal: i=1; cv=none; a=rsa-sha256; d=toke.dk; s=arc202507;
 t=1764268061;
 b=yIKDNypJWYW56Objd+lSW+P/xLa4dtLYH/FyLqZePUOH4dY6QUKZFWGodw8/gE3iSEC+S
 Bktx4L6bSujHmEYHoX645DODo+4qwERadkHF/mwcXoiWblThWFJqln+Es9qS0rAIMeijtvy
 q0UZZ1TBAibGYH8YZettcv5ULPNgzoc=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=toke.dk;
 s=arc202507; t=1764268061; h=from : sender : reply-to : subject : date
 : message-id : to : cc : mime-version : content-type :
 content-transfer-encoding : content-id : content-description :
 resent-date : resent-from : resent-sender : resent-to : resent-cc :
 resent-message-id : in-reply-to : references : list-id : list-help :
 list-unsubscribe : list-subscribe : list-post : list-owner :
 list-archive; bh=L+Z7hI9z3+cDO79YrqecLfvjgmbX+y2rn+zwzAUuQUE=;
 b=aQ65SxMQggGahhnTH97EBPSVN9jiRZTEI+T4xbinl0VClOTx0hgeu9Q5CocDJih3Zmuk1
 Md76bLwOb8a0wQSUI2cl+achVhWLIl/cnhhWMEx5FBL27mUcHtbTONk7vDy6gp6jaPLg5vh
 Kv1j1xzcgXXDwRj8vQMnPTJh8q6TCfE=
ARC-Authentication-Results: i=1; mail.toke.dk;
 spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com;
 arc=none;
 dmarc=pass header.from=gmail.com policy.dmarc=quarantine
Authentication-Results: mail.toke.dk; spf=pass smtp.mailfrom=;
 dkim=pass header.d=gmail.com; arc=none (Message is not ARC signed);
 dmarc=pass (Used From Domain Record) header.from=gmail.com
 policy.dmarc=quarantine
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com
 [IPv6:2607:f8b0:4864:20::1036])
	by mail.toke.dk (Postfix) with ESMTPS id BBFC59D559A
	for <cake@lists.bufferbloat.net>; Thu, 27 Nov 2025 19:27:39 +0100 (CET)
Received: by mail-pj1-x1036.google.com with SMTP id
 98e67ed59e1d1-3437c093ef5so1185696a91.0
        for <cake@lists.bufferbloat.net>;
 Thu, 27 Nov 2025 10:27:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764268058; x=1764872858;
 darn=lists.bufferbloat.net;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0CMVGAuO5wqFF/9s4vk28iQRbRU4P2KKj9YXBpRmdYM=;
        b=ahJWf9Z5w805paZ+DhmFAONxRQ4xLLtrOBQ4c+jtVm4kvN5AJGbUMp/aredei2bcGX
         A6MnQ181TZ+zRFHUOISJb3B0EmWDLBQw6q3WgpvAGG3ytuesfx9K6zgGreF+Yuddhx13
         ciWW74rsySo11ngDckLlWVuX0gMoVAkobHBloMp0ymDbpxQ4U0nsFdZpIa4Jvh4PpuLx
         iSoDsPgKkIgpGiC96KKbckuXew9W6tFxGvhC8CHLoRyBzaFMYNbw8EPf8tAOv+kXL/MD
         QfTwgiiJke1LQ06Gy7wA/p1hA29N5BrFGuS4dD5VxTY+/Rp/Em8wj+xVHLcCdv0piHaK
         //fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764268058; x=1764872858;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0CMVGAuO5wqFF/9s4vk28iQRbRU4P2KKj9YXBpRmdYM=;
        b=miiYJQywmG5ODmCNOKpKlg8tPp/fR7X5puowLeUmGvduRORQsI1JeINUDnJ9JYc6zm
         T/FBHVJjMTEC1z8QC1F6j1i0q/hmuHJqT83cMMVMw5FjqELpXMYBD82qiR3+MnuuGVY3
         fS9d9dxzZ6uv/GDRMOHxx+3lqDpG97+21PXCx2ROcwfArDxQE6lwSuFFeIFw9IDhxCgJ
         iTS28iHjMQjPnOAZqpRTfVhl6KhnqPMBLhbFi/rR3GNuuXoS3vG/ezQriNGE2M3mUTGe
         Sx+wUfUDfyDTmAj+/gJv6fvL3s+cz9udplBksWIMG9KuF+oBZkcsMoW2bBG/7Z94CYcB
         4GVg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUOtCuI+nEx1ZNkOIRqXYRARTeYSJOTrglVymAR7rVaI8KErl5Xtp5dRPlBdJV712Q6MxI5@lists.bufferbloat.net
X-Gm-Message-State: AOJu0YzzetDu0uiXnNhAKyHgSEpTQEINhY1zGnggSC/YFUUxMuJ2CJGx
	gn3UsJHTWY0z15mSelemtMpHxOsm2hJyvHBJIZ01r2e8/4uxln7MiLL6
X-Gm-Gg: ASbGncsvS+wTTYovrcQlbGxLF89T8Pg0s7dHyh7j53iFgvbhXalsciQ5wN9IlJyw3Ba
	z6kjvJncojDiFeJTa97uxCvrfpBjTlmakuu+6ij4q6NZYITejmb7CaZJftOSOVERgVPG59OlHC/
	w8GTG2/J03zx/TbdTNw3zIaqkVW78eBP/x+fnXXKAO1Z5p8jhAp9VvKIDozk/KcUtM/UZ0t3tzI
	S82/BwlQqgZq9r/EYvxIKN1ysTMAiN+fwtFxI6o2ex1yEmugtSpNDyotr71TsOSjyAcmeD5tnw4
	6Jgyyngc+GhYoZF3XoOGZFr05uy8R1D/kPXKM7L8QKAVBc5Y+YJvEuow+k2HLMoojoIKcdtaOwK
	2DU/PfPqgUHuddF5jvAqq1/4aNmhVVDTwGgsmpewNR1hWiKLKsEMw7FDBG3Bd6MVjN7L4ZFw/UF
	ybao74DYklCtn0ZnQXMA24464cKVYE
X-Google-Smtp-Source: 
 AGHT+IGmOQn/7Iyw3cNCmmtlFpPj1vTc9hwuBd70jhjhxMIyoDPclV8Z/6/KIWSshi3AFbKHPxCWDQ==
X-Received: by 2002:a17:90b:2d87:b0:340:9d52:44c1 with SMTP id
 98e67ed59e1d1-34733f3f6eamr25933547a91.35.1764268057716;
        Thu, 27 Nov 2025 10:27:37 -0800 (PST)
Received: from localhost ([2601:647:6802:dbc0:ef22:445e:1e79:6b9a])
        by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3477b20b711sm2467395a91.7.2025.11.27.10.27.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Nov 2025 10:27:37 -0800 (PST)
Date: Thu, 27 Nov 2025 10:27:36 -0800
From: Cong Wang <xiyou.wangcong@gmail.com>
To: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@redhat.com>
Cc: Toke =?iso-8859-1?Q?H=F8iland-J=F8rgensen?= <toke@toke.dk>,
	Jamal Hadi Salim <jhs@mojatatu.com>, Jiri Pirko <jiri@resnulli.us>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	Jonas =?iso-8859-1?Q?K=F6ppeler?= <j.koeppeler@tu-berlin.de>,
	cake@lists.bufferbloat.net, netdev@vger.kernel.org
Message-ID: <aSiYGOyPk+KeXAhn@pop-os.localdomain>
References: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20251127-mq-cake-sub-qdisc-v2-0-24d9ead047b9@redhat.com>
Message-ID-Hash: S2VNCEDNSSW475C7GPQ5GXHVL46WX5YM
X-Message-ID-Hash: S2VNCEDNSSW475C7GPQ5GXHVL46WX5YM
X-MailFrom: xiyou.wangcong@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; loop;
 banned-address; emergency; member-moderation; nonmember-moderation;
 administrivia; implicit-dest; max-recipients; max-size; news-moderation;
 no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.10
Precedence: list
Subject: [Cake] Re: [PATCH net-next v2 0/4] Multi-queue aware sch_cake
List-Id: Cake - FQ_codel the next generation <cake.lists.bufferbloat.net>
Archived-At: 
 <https://lists.bufferbloat.net/cake/aSiYGOyPk+KeXAhn@pop-os.localdomain/>
List-Archive: <https://lists.bufferbloat.net/cake/>
List-Help: <mailto:cake-request@lists.bufferbloat.net?subject=help>
List-Owner: <mailto:cake-owner@lists.bufferbloat.net>
List-Post: <mailto:cake@lists.bufferbloat.net>
List-Subscribe: <mailto:cake-join@lists.bufferbloat.net>
List-Unsubscribe: <mailto:cake-leave@lists.bufferbloat.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Toke,

On Thu, Nov 27, 2025 at 10:30:50AM +0100, Toke H=F8iland-J=F8rgensen wrote:
>  Documentation/netlink/specs/tc.yaml |   3 +
>  include/uapi/linux/pkt_sched.h      |   1 +
>  net/sched/sch_cake.c                | 623 ++++++++++++++++++++++++++++--=
------
>  3 files changed, 502 insertions(+), 125 deletions(-)

Is there any chance you could provide selftests for this new qdisc
together with this patchset?

I guess iproute2 is the main blocker?

Regards,
Cong Wang
_______________________________________________
Cake mailing list -- cake@lists.bufferbloat.net
To unsubscribe send an email to cake-leave@lists.bufferbloat.net
