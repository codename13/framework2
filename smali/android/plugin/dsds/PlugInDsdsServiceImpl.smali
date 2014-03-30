.class public Landroid/plugin/dsds/PlugInDsdsServiceImpl;
.super Landroid/plugin/dsds/PlugInDsdsService;
.source "PlugInDsdsServiceImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "plugin"


# instance fields
.field private mConnMgr:Landroid/net/IConnectivityManager;

.field private mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

.field private mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/plugin/dsds/PlugInDsdsService;-><init>()V

    .line 78
    const-string v0, "phone_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v0

    iput-object v0, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 79
    const-string v0, "simphonebook_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBookMSim;

    move-result-object v0

    iput-object v0, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    .line 80
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mConnMgr:Landroid/net/IConnectivityManager;

    return-void
.end method


# virtual methods
.method public MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I
    .locals 7
    .parameter "body"
    .parameter "scAddress"
    .parameter "Address"
    .parameter "SmsType"
    .parameter "date"
    .parameter "subscription"

    .prologue
    .line 1101
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public deleteMessageFromIcc(II)Z
    .locals 1
    .parameter "messageIndex"
    .parameter "subscription"

    .prologue
    .line 1124
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsManager;->deleteMessageFromIcc(II)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 1085
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsManager;->disableCellBroadcast(II)Z

    move-result v0

    return v0
.end method

.method public disableCellBroadcastRange(III)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"
    .parameter "subscription"

    .prologue
    .line 1090
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/SmsManager;->disableCellBroadcastRange(III)Z

    move-result v0

    return v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1108
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "encodingType"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1114
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableCellBroadcast(II)Z
    .locals 1
    .parameter "messageIdentifier"
    .parameter "subscription"

    .prologue
    .line 1075
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsManager;->enableCellBroadcast(II)Z

    move-result v0

    return v0
.end method

.method public enableCellBroadcastRange(III)Z
    .locals 1
    .parameter "startMessageId"
    .parameter "endMessageId"
    .parameter "subscription"

    .prologue
    .line 1080
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/SmsManager;->enableCellBroadcastRange(III)Z

    move-result v0

    return v0
.end method

.method public getAdnLikesInfo(II)[I
    .locals 4
    .parameter "efid"
    .parameter "simSlot"

    .prologue
    const/4 v2, 0x0

    .line 967
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 968
    .local v1, mSIMM:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 969
    const/4 p2, 0x0

    .line 972
    :cond_0
    :try_start_0
    const-string v3, "simphonebook_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBookMSim;

    move-result-object v3

    iput-object v3, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    .line 973
    iget-object v3, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBookMSim;->getAdnLikesInfo(II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 978
    :goto_0
    return-object v2

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 976
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 978
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getAdnLikesSimStatusInfo(II)I
    .locals 4
    .parameter "efid"
    .parameter "simSlot"

    .prologue
    const/4 v2, -0x1

    .line 984
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 985
    .local v1, mSIMM:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 986
    const/4 p2, 0x0

    .line 990
    :cond_0
    :try_start_0
    const-string v3, "simphonebook_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBookMSim;

    move-result-object v3

    iput-object v3, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    .line 991
    iget-object v3, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBookMSim;->getAdnLikesSimStatusInfo(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 996
    :goto_0
    return v2

    .line 992
    :catch_0
    move-exception v0

    .line 993
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 994
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 996
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getAdnRecordsInEf(II)Ljava/util/List;
    .locals 3
    .parameter "efid"
    .parameter "simSlot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 955
    :try_start_0
    const-string v2, "simphonebook_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBookMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    .line 956
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBookMSim;->getAdnRecordsInEfOnSubscription(II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 961
    :goto_0
    return-object v1

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 959
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 961
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getAdnRecordsSize(II)[I
    .locals 3
    .parameter "efid"
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x0

    .line 943
    :try_start_0
    const-string v2, "simphonebook_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBookMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    .line 944
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/IIccPhoneBookMSim;->getAdnRecordsSizeOnSubscription(II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 949
    :goto_0
    return-object v1

    .line 945
    :catch_0
    move-exception v0

    .line 946
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 947
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 949
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getAdnUri(I)Ljava/lang/String;
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 1025
    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1026
    .local v0, mSIMM:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    const/4 p1, 0x0

    .line 1029
    :cond_0
    if-nez p1, :cond_1

    .line 1030
    const-string v1, "content://iccmsim/adn"

    .line 1035
    :goto_0
    return-object v1

    .line 1031
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1032
    const-string v1, "content://iccmsim/adn_sub2"

    goto :goto_0

    .line 1035
    :cond_2
    const-string v1, "content://iccmsim/adn"

    goto :goto_0
.end method

.method public getAllMessagesFromIcc(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1119
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc(I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCallState(I)I
    .locals 2
    .parameter "subscription"

    .prologue
    .line 297
    const-string v0, "plugin"

    const-string v1, "getCallState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getCallState(I)I

    move-result v0

    return v0
.end method

.method public getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;
    .locals 2
    .parameter "context"
    .parameter "number"
    .parameter "simSlot"

    .prologue
    .line 292
    const-string v0, "plugin"

    const-string v1, "getCallerInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {p1, p2, p3}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCbSettings(I)Landroid/telephony/gsm/CbConfig;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1133
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getCbSettings()Landroid/telephony/gsm/CbConfig;

    move-result-object v0

    return-object v0
.end method

.method public getCellLocation(I)Landroid/os/Bundle;
    .locals 1
    .parameter "subscription"

    .prologue
    .line 600
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 346
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompleteVoiceMailNumber() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getCompleteVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataRoamingEnabled(I)Z
    .locals 4
    .parameter "simSlot"

    .prologue
    .line 604
    invoke-static {p1}, Lcom/android/internal/telephony/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    .line 605
    .local v0, value:Z
    const-string v1, "plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataRoamingEnabled() + simSlot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    return v0
.end method

.method public getDataSimSlot()I
    .locals 2

    .prologue
    .line 664
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->isDualSIM()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getDataSubscription()I

    move-result v0

    .line 666
    :goto_0
    return v0

    :cond_0
    const-string v0, "persist.sys.dataprefer.simid"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public getDataState()I
    .locals 4

    .prologue
    .line 621
    :try_start_0
    const-string v1, "plugin"

    const-string v2, "getDataState()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getDataState()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 627
    :goto_0
    return v1

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, ex:Ljava/lang/NullPointerException;
    const-string v1, "plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataState() NullPointerException occurred ex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getDataState(I)I
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 632
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDataState() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->isDualSIM()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getDataSubscription()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 635
    const/4 v0, 0x0

    .line 639
    :goto_0
    return v0

    .line 637
    :cond_0
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getDataState()I

    move-result v0

    goto :goto_0

    .line 639
    :cond_1
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getDataState()I

    move-result v0

    goto :goto_0
.end method

.method public getDataSubscription()I
    .locals 5

    .prologue
    .line 644
    const-string v2, "plugin"

    const-string v3, "getDataSubscription()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :try_start_0
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    if-eqz v2, :cond_0

    .line 649
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephonyMSim;->getPreferredDataSubscription()I

    move-result v1

    .line 655
    .local v1, result:I
    :goto_0
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataSubscription() return result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :goto_1
    return v1

    .line 651
    .end local v1           #result:I
    :cond_0
    const-string v2, "plugin"

    const-string v3, "getDataSubscription() mMSimPhoneService is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 653
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephonyMSim;->getPreferredDataSubscription()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .restart local v1       #result:I
    goto :goto_0

    .line 656
    .end local v1           #result:I
    :catch_0
    move-exception v0

    .line 657
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "persist.sys.dataprefer.simid"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 658
    .restart local v1       #result:I
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDataSubscription() exception occured so we provide setting property value result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 383
    const-string v0, "plugin"

    const-string v1, "getDefaultPhone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/internal/telephony/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 388
    const-string v0, "plugin"

    const-string v1, "getDefaultPhone()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {p1}, Lcom/android/internal/telephony/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSimForVoiceCalls()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 105
    const-string v2, "plugin"

    const-string v3, "getDefaultSimForVoiceCalls()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 108
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephonyMSim;->getDefaultSimForVoiceCalls()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 113
    :goto_0
    return v1

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 111
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDefaultSubscription()I
    .locals 2

    .prologue
    .line 367
    const-string v0, "plugin"

    const-string v1, "getDefaultSubscription()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDefaultSubscription()I

    move-result v0

    return v0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 320
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceId() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 325
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceSoftwareVersion() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFdnUri(I)Ljava/lang/String;
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 1057
    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1058
    .local v0, mSIMM:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1059
    const/4 p1, 0x0

    .line 1061
    :cond_0
    if-nez p1, :cond_1

    .line 1062
    const-string v1, "content://iccmsim/fdn"

    .line 1067
    :goto_0
    return-object v1

    .line 1063
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1064
    const-string v1, "content://iccmsim/fdn_sub2"

    goto :goto_0

    .line 1067
    :cond_2
    const-string v1, "content://iccmsim/fdn"

    goto :goto_0
.end method

.method public getIccFdnEnabled(I)Z
    .locals 5
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x0

    .line 257
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIccFdnEnabled() simSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0, p1}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimSlotForMasterSIM(I)I

    move-result p1

    .line 260
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 261
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->getIccFdnEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 266
    :goto_0
    return v1

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 264
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 266
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getInsertedSimCount()I
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 182
    const-string v5, "plugin"

    const-string v6, "getInsertedSimCount()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 184
    invoke-virtual {p0, v4}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimState(I)I

    move-result v0

    .line 185
    .local v0, sim1State:I
    invoke-virtual {p0, v3}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimState(I)I

    move-result v1

    .line 187
    .local v1, sim2State:I
    if-eq v0, v3, :cond_0

    if-nez v0, :cond_3

    :cond_0
    if-eq v1, v3, :cond_1

    if-nez v1, :cond_3

    :cond_1
    move v3, v4

    .line 202
    .end local v0           #sim1State:I
    .end local v1           #sim2State:I
    :cond_2
    :goto_0
    return v3

    .line 190
    .restart local v0       #sim1State:I
    .restart local v1       #sim2State:I
    :cond_3
    if-eq v0, v3, :cond_2

    if-eqz v0, :cond_2

    if-eq v1, v3, :cond_2

    if-eqz v1, :cond_2

    .line 194
    const/4 v3, 0x2

    goto :goto_0

    .line 197
    .end local v0           #sim1State:I
    .end local v1           #sim2State:I
    :cond_4
    invoke-virtual {p0, v4}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimState(I)I

    move-result v2

    .line 199
    .local v2, simState:I
    if-eq v2, v3, :cond_5

    if-nez v2, :cond_2

    :cond_5
    move v3, v4

    .line 200
    goto :goto_0
.end method

.method public getLine1AlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 336
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLine1AlphaTag() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getLine1AlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number(I)Ljava/lang/String;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 315
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLine1Number() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 546
    const-string v0, "plugin"

    const-string v1, "getLteOnCdmaMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getLteOnCdmaMode(I)I

    move-result v0

    return v0
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 5
    .parameter "networkType"

    .prologue
    const/4 v1, 0x0

    .line 838
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkInfo() networkType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mConnMgr:Landroid/net/IConnectivityManager;

    if-nez v2, :cond_0

    .line 840
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->retryGetConnectivityManager()Z

    move-result v2

    if-nez v2, :cond_0

    .line 841
    const-string v2, "plugin"

    const-string v3, "retryGetConnectivityManager() return false!! cannot get ConnectivityManager!! please retry"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :goto_0
    return-object v1

    .line 845
    :cond_0
    invoke-virtual {p0, p1}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->switchNetworkTypeDualToSingle(I)I

    move-result p1

    .line 848
    :try_start_0
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mConnMgr:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 849
    :catch_0
    move-exception v0

    .line 850
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException in getNetworkInfo()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 277
    const-string v0, "plugin"

    const-string v1, "getNetworkOperator()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkType(I)I
    .locals 2
    .parameter "subscription"

    .prologue
    .line 393
    const-string v0, "plugin"

    const-string v1, "getNetworkType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    invoke-static {p1}, Landroid/telephony/MSimTelephonyManager;->getNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getPin2Retry(I)I
    .locals 5
    .parameter "simSlot"

    .prologue
    const/4 v1, -0x1

    .line 467
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPin2Retry() + simSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0, p1}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimSlotForMasterSIM(I)I

    move-result p1

    .line 470
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 471
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->getIccPin2RetryCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 476
    :goto_0
    return v1

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 474
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 476
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPinRemainingStatus(II)I
    .locals 1
    .parameter "type"
    .parameter "simSlot"

    .prologue
    .line 510
    packed-switch p1, :pswitch_data_0

    .line 521
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 513
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getPinRetry(I)I

    move-result v0

    goto :goto_0

    .line 515
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getPin2Retry(I)I

    move-result v0

    goto :goto_0

    .line 517
    :pswitch_2
    invoke-virtual {p0, p2}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getPukRetry(I)I

    move-result v0

    goto :goto_0

    .line 519
    :pswitch_3
    invoke-virtual {p0, p2}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getPuk2Retry(I)I

    move-result v0

    goto :goto_0

    .line 510
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPinRetry(I)I
    .locals 5
    .parameter "simSlot"

    .prologue
    const/4 v1, -0x1

    .line 453
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPinRetry() + simSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {p0, p1}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimSlotForMasterSIM(I)I

    move-result p1

    .line 456
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 457
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->getIccPin1RetryCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 462
    :goto_0
    return v1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 460
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 462
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPreferredDataSubscription()I
    .locals 5

    .prologue
    .line 677
    const-string v2, "plugin"

    const-string v3, "getPreferredDataSubscription()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v1, 0x0

    .line 681
    .local v1, result:I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getDataSubscription()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 685
    :goto_0
    return v1

    .line 682
    :catch_0
    move-exception v0

    .line 683
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferredDataSubscription Exception occurred!!! we need fix this!! e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPuk2Retry(I)I
    .locals 5
    .parameter "simSlot"

    .prologue
    const/4 v1, -0x1

    .line 495
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPuk2Retry() + simSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {p0, p1}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimSlotForMasterSIM(I)I

    move-result p1

    .line 498
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 499
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->getIccPuk2RetryCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 504
    :goto_0
    return v1

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 502
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 504
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getPukRetry(I)I
    .locals 5
    .parameter "simSlot"

    .prologue
    const/4 v1, -0x1

    .line 481
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPukRetry() + simSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0, p1}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimSlotForMasterSIM(I)I

    move-result p1

    .line 484
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 485
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->getIccPuk1RetryCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 490
    :goto_0
    return v1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 488
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 490
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSMSPAvailable(I)Z
    .locals 1
    .parameter "subscription"

    .prologue
    .line 1095
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SmsManager;->getSMSPAvailable(I)Z

    move-result v0

    return v0
.end method

.method public getSdnUri(I)Ljava/lang/String;
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 1041
    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, mSIMM:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1043
    const/4 p1, 0x0

    .line 1045
    :cond_0
    if-nez p1, :cond_1

    .line 1046
    const-string v1, "content://iccmsim/sdn"

    .line 1051
    :goto_0
    return-object v1

    .line 1047
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 1048
    const-string v1, "content://iccmsim/sdn_sub2"

    goto :goto_0

    .line 1051
    :cond_2
    const-string v1, "content://iccmsim/sdn"

    goto :goto_0
.end method

.method public getSettingIconField(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 1147
    if-nez p1, :cond_0

    .line 1148
    const-string v0, "select_icon_1"

    .line 1153
    :goto_0
    return-object v0

    .line 1149
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1150
    const-string v0, "select_icon_2"

    goto :goto_0

    .line 1153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSettingNameField(I)Ljava/lang/String;
    .locals 1
    .parameter "simId"

    .prologue
    .line 1137
    if-nez p1, :cond_0

    .line 1138
    const-string v0, "select_name_1"

    .line 1143
    :goto_0
    return-object v0

    .line 1139
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1140
    const-string v0, "select_name_2"

    goto :goto_0

    .line 1143
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 241
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimOperator() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    if-nez p1, :cond_0

    .line 243
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    :goto_0
    return-object v0

    .line 244
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 245
    const-string v0, "gsm.sim.operator.numeric_1"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_1
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 356
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimSerialNumber() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSlotForMasterSIM(I)I
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 538
    const-string v1, "ril.MSIMM"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, mSIMM:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    const/4 p1, 0x1

    .line 542
    .end local p1
    :cond_0
    return p1
.end method

.method public getSimState()I
    .locals 2

    .prologue
    .line 208
    const-string v0, "plugin"

    const-string v1, "getSimState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimState(I)I

    move-result v0

    return v0
.end method

.method public getSimState(I)I
    .locals 5
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x1

    .line 213
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimState() simSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    if-ne v1, p1, :cond_0

    .line 216
    const-string v2, "gsm.sim.state_1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, prop:Ljava/lang/String;
    :goto_0
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 236
    :goto_1
    return v1

    .line 218
    .end local v0           #prop:Ljava/lang/String;
    :cond_0
    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #prop:Ljava/lang/String;
    goto :goto_0

    .line 223
    :cond_1
    const-string v1, "PIN_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    const/4 v1, 0x2

    goto :goto_1

    .line 226
    :cond_2
    const-string v1, "PUK_REQUIRED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 227
    const/4 v1, 0x3

    goto :goto_1

    .line 229
    :cond_3
    const-string v1, "NETWORK_LOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    const/4 v1, 0x4

    goto :goto_1

    .line 232
    :cond_4
    const-string v1, "READY"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 233
    const/4 v1, 0x5

    goto :goto_1

    .line 236
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 330
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubscriberId() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscription(Lcom/android/internal/telephony/Phone;)I
    .locals 2
    .parameter "phone"

    .prologue
    .line 252
    const-string v0, "plugin"

    const-string v1, "getSubscription()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getSubscription()I

    move-result v0

    return v0
.end method

.method public getTelephonyManagerService(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 615
    const-string v0, "plugin"

    const-string v1, "getTelephonyManagerService()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v0, "phone_msim"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getUsimPBCapaInfo(I)Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    .locals 4
    .parameter "simSlot"

    .prologue
    const/4 v2, 0x0

    .line 1002
    const-string v3, "ril.MSIMM"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1003
    .local v1, mSIMM:Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1004
    const/4 p1, 0x0

    .line 1007
    :cond_0
    :try_start_0
    const-string v3, "simphonebook_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBookMSim;

    move-result-object v3

    iput-object v3, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    .line 1008
    iget-object v3, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    invoke-interface {v3, p1}, Lcom/android/internal/telephony/IIccPhoneBookMSim;->getUsimPBCapaInfo(I)Lcom/android/internal/telephony/UsimPhonebookCapaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1013
    :goto_0
    return-object v2

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 1011
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1013
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 351
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVoiceMailAlphaTag() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 341
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVoiceMailNumber() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount(I)I
    .locals 5
    .parameter "simSlot"

    .prologue
    const/4 v1, -0x1

    .line 440
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVoiceMessageCount() + simSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 443
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->getVoiceMessageCount(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 448
    :goto_0
    return v1

    .line 444
    :catch_0
    move-exception v0

    .line 445
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 446
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 448
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getVoiceSubscription()I
    .locals 2

    .prologue
    .line 372
    const-string v0, "plugin"

    const-string v1, "getVoiceSubscription()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {}, Lcom/android/internal/telephony/MSimPhoneFactory;->getVoiceSubscription()I

    move-result v0

    return v0
.end method

.method public hasIccCard()Z
    .locals 2

    .prologue
    .line 305
    const-string v0, "plugin"

    const-string v1, "hasIccCard()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 310
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasIccCard() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public isDualSIM()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 142
    const-string v4, "plugin"

    const-string v5, "isDualSIM()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    invoke-virtual {p0, v3}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimState(I)I

    move-result v0

    .line 145
    .local v0, sim1State:I
    invoke-virtual {p0, v2}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimState(I)I

    move-result v1

    .line 147
    .local v1, sim2State:I
    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 154
    .end local v0           #sim1State:I
    .end local v1           #sim2State:I
    :goto_0
    return v2

    .restart local v0       #sim1State:I
    .restart local v1       #sim2State:I
    :cond_0
    move v2, v3

    .line 151
    goto :goto_0

    .end local v0           #sim1State:I
    .end local v1           #sim2State:I
    :cond_1
    move v2, v3

    .line 154
    goto :goto_0
.end method

.method public isIdle(I)Z
    .locals 5
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x0

    .line 118
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIdle() simSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_0
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->isIdle(I)Z

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 123
    :cond_0
    const-string v2, "plugin"

    const-string v3, "isIdle() mMSimPhoneService is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 125
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->isIdle(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 129
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 131
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 2
    .parameter "number"
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 282
    const-string v0, "plugin"

    const-string v1, "isLocalEmergencyNumber()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public isMsimSupport()Z
    .locals 2

    .prologue
    .line 137
    const-string v0, "plugin"

    const-string v1, "isMsimSupport()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string v0, "persist.dsds.enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 2
    .parameter "simSlot"

    .prologue
    .line 551
    const-string v0, "plugin"

    const-string v1, "isNetworkRoaming"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public isNoSIM()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 159
    const-string v5, "plugin"

    const-string v6, "isNoSIM()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 161
    invoke-virtual {p0, v3}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimState(I)I

    move-result v0

    .line 162
    .local v0, sim1State:I
    invoke-virtual {p0, v4}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimState(I)I

    move-result v1

    .line 164
    .local v1, sim2State:I
    if-eq v0, v4, :cond_0

    if-nez v0, :cond_2

    :cond_0
    if-eq v1, v4, :cond_1

    if-nez v1, :cond_2

    :cond_1
    move v3, v4

    .line 176
    .end local v0           #sim1State:I
    .end local v1           #sim2State:I
    :cond_2
    :goto_0
    return v3

    .line 171
    :cond_3
    invoke-virtual {p0, v3}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimState(I)I

    move-result v2

    .line 173
    .local v2, simState:I
    if-eq v2, v4, :cond_4

    if-nez v2, :cond_2

    :cond_4
    move v3, v4

    .line 174
    goto :goto_0
.end method

.method public isOffhook(I)Z
    .locals 4
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x0

    .line 568
    :try_start_0
    const-string v2, "plugin"

    const-string v3, "isOffhook"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->isOffhook(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 574
    :goto_0
    return v1

    .line 570
    :catch_0
    move-exception v0

    .line 571
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 572
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 574
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z
    .locals 2
    .parameter "number"
    .parameter "context"
    .parameter "simSlot"

    .prologue
    .line 287
    const-string v0, "plugin"

    const-string v1, "isPotentialLocalEmergencyNumber()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {p1, p2, p3}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public isRinging(I)Z
    .locals 4
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x0

    .line 557
    :try_start_0
    const-string v2, "plugin"

    const-string v3, "isRinging"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->isRinging(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 563
    :goto_0
    return v1

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 561
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 563
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isSimPinEnabled(I)Z
    .locals 5
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x0

    .line 398
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimPinEnabled() + simSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p0, p1}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimSlotForMasterSIM(I)I

    move-result p1

    .line 401
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 402
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->isSimPinEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 407
    :goto_0
    return v1

    .line 403
    :catch_0
    move-exception v0

    .line 404
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 405
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 407
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isSimPukLocked(I)Z
    .locals 5
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x0

    .line 526
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimPukLocked() + simSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 529
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->isSimPukLocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 534
    :goto_0
    return v1

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 532
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 534
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 361
    const-string v0, "plugin"

    const-string v1, "isVoiceCapable()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 2
    .parameter "listener"
    .parameter "events"

    .prologue
    .line 1018
    const-string v0, "plugin"

    const-string v1, "listen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/MSimTelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1020
    return-void
.end method

.method public makeMultiSimDefaultPhones(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 378
    const-string v0, "plugin"

    const-string v1, "makeMultiSimDefaultPhones()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {p1}, Lcom/android/internal/telephony/MSimPhoneFactory;->makeMultiSimDefaultPhones(Landroid/content/Context;)V

    .line 380
    return-void
.end method

.method public requestRouteToHost(II)Z
    .locals 5
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    const/4 v1, 0x0

    .line 901
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestRouteToHost() networkType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hostAddress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mConnMgr:Landroid/net/IConnectivityManager;

    if-nez v2, :cond_0

    .line 903
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->retryGetConnectivityManager()Z

    move-result v2

    if-nez v2, :cond_0

    .line 904
    const-string v2, "plugin"

    const-string v3, "retryGetConnectivityManager() return false!! cannot get ConnectivityManager!! please retry"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :goto_0
    return v1

    .line 907
    :cond_0
    invoke-virtual {p0, p1}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->switchNetworkTypeDualToSingle(I)I

    move-result p1

    .line 909
    :try_start_0
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mConnMgr:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, p2}, Landroid/net/IConnectivityManager;->requestRouteToHost(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 910
    :catch_0
    move-exception v0

    .line 911
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestRouteToHost() return RemoteException!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public retryGetConnectivityManager()Z
    .locals 2

    .prologue
    .line 754
    const-string v0, "plugin"

    const-string v1, "retryGetConnectivityManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mConnMgr:Landroid/net/IConnectivityManager;

    .line 756
    iget-object v0, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mConnMgr:Landroid/net/IConnectivityManager;

    if-eqz v0, :cond_0

    .line 757
    const/4 v0, 0x1

    .line 758
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1160
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 1163
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)V
    .locals 9
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "callbackNumber"
    .parameter "priority"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 1170
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 1173
    return-void
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIII)V
    .locals 11
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .parameter "subscription"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIIII)V"
        }
    .end annotation

    .prologue
    .line 1179
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIIII)V

    .line 1182
    return-void
.end method

.method public setBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "context"
    .parameter "bitmap"
    .parameter "simId"

    .prologue
    .line 85
    :try_start_0
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDataRoamingEnabled(IZ)V
    .locals 3
    .parameter "simSlot"
    .parameter "value"

    .prologue
    .line 610
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataRoamingEnabled() + simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-static {p1}, Lcom/android/internal/telephony/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 612
    return-void
.end method

.method public setDataSubscription(I)Z
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 670
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataSubscription() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p0, p1}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->setPreferredDataSubscription(I)Z

    move-result v0

    return v0
.end method

.method public setDefaultSimForVoiceCalls(I)I
    .locals 5
    .parameter "simSlot"

    .prologue
    const/4 v1, -0x1

    .line 92
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDefaultSimForVoiceCalls() simSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 95
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephonyMSim;->setDefaultSimForVoiceCalls(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 100
    :goto_0
    return v1

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 98
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 100
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setPreferredDataSubscription(I)Z
    .locals 3
    .parameter "simSlot"

    .prologue
    .line 689
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferredDataSubscription() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/MSimTelephonyManager;->setPreferredDataSubscription(I)Z

    move-result v0

    return v0
.end method

.method public setRadioPower(ZI)V
    .locals 3
    .parameter "power"
    .parameter "simSlot"

    .prologue
    .line 271
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioPower() simSlot:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " power:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-static {p2}, Lcom/android/internal/telephony/MSimPhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 273
    return-void
.end method

.method public showCallScreen()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 579
    :try_start_0
    const-string v2, "plugin"

    const-string v3, "showCallScreen"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephonyMSim;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 585
    :goto_0
    return v1

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 583
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 585
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 7
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/16 v6, 0x19

    const/16 v5, 0x12

    const/4 v1, -0x1

    .line 856
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUsingNetworkFeature() networkType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " feature:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mConnMgr:Landroid/net/IConnectivityManager;

    if-nez v2, :cond_0

    .line 858
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->retryGetConnectivityManager()Z

    move-result v2

    if-nez v2, :cond_0

    .line 859
    const-string v2, "plugin"

    const-string v3, "retryGetConnectivityManager() return false!! cannot get ConnectivityManager!! please retry"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :goto_0
    return v1

    .line 863
    :cond_0
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUsingNetworkFeature() isDualSIM():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->isDualSIM()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->isDualSIM()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 865
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUsingNetworkFeature() getDataSubscription():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getDataSubscription()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getDataSubscription()I

    move-result v2

    if-nez v2, :cond_2

    if-lt p1, v5, :cond_2

    if-gt p1, v6, :cond_2

    .line 867
    const-string v2, "plugin"

    const-string v3, "startUsingNetworkFeature() diffenent Datasubscription from networkType requested switchToSim2DataNetwork()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->switchToSim2DataNetwork()V

    .line 876
    :cond_1
    :goto_1
    invoke-virtual {p0, p1}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->switchNetworkTypeDualToSingle(I)I

    move-result p1

    .line 879
    :try_start_0
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mConnMgr:Landroid/net/IConnectivityManager;

    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    invoke-interface {v2, p1, p2, v3}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 870
    :cond_2
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getDataSubscription()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-lt p1, v5, :cond_3

    if-le p1, v6, :cond_1

    .line 871
    :cond_3
    const-string v2, "plugin"

    const-string v3, "startUsingNetworkFeature() diffenent Datasubscription from networkType requested switchToSim1DataNetwork()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->switchToSim1DataNetwork()V

    goto :goto_1

    .line 880
    :catch_0
    move-exception v0

    .line 881
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 5
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v1, -0x1

    .line 886
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopUsingNetworkFeature() networkType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " feature:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mConnMgr:Landroid/net/IConnectivityManager;

    if-nez v2, :cond_0

    .line 888
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->retryGetConnectivityManager()Z

    move-result v2

    if-nez v2, :cond_0

    .line 889
    const-string v2, "plugin"

    const-string v3, "retryGetConnectivityManager() return false!! cannot get ConnectivityManager!! please retry"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :goto_0
    return v1

    .line 892
    :cond_0
    invoke-virtual {p0, p1}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->switchNetworkTypeDualToSingle(I)I

    move-result p1

    .line 894
    :try_start_0
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mConnMgr:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, p2}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, e:Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;I)Z
    .locals 5
    .parameter "pin"
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x0

    .line 412
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supplyPin() + simSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0, p2}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimSlotForMasterSIM(I)I

    move-result p2

    .line 415
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 416
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephonyMSim;->supplyPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 421
    :goto_0
    return v1

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 419
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 421
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5
    .parameter "puk"
    .parameter "pin"
    .parameter "simSlot"

    .prologue
    const/4 v1, 0x0

    .line 426
    const-string v2, "plugin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supplyPuk() + simSlot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " puk:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0, p3}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getSimSlotForMasterSIM(I)I

    move-result p3

    .line 429
    :try_start_0
    const-string v2, "phone_msim"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyMSim;

    move-result-object v2

    iput-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    .line 430
    iget-object v2, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimPhoneService:Lcom/android/internal/telephony/ITelephonyMSim;

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephonyMSim;->supplyPuk(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 435
    :goto_0
    return v1

    .line 431
    :catch_0
    move-exception v0

    .line 432
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 433
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 435
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public switchNetworkTypeDualToSingle(I)I
    .locals 3
    .parameter "networkType"

    .prologue
    .line 762
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchNetworkTypeDualToSingle() networkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    packed-switch p1, :pswitch_data_0

    .line 799
    :goto_0
    :pswitch_0
    return p1

    .line 766
    :pswitch_1
    const/4 p1, 0x0

    .line 767
    goto :goto_0

    .line 770
    :pswitch_2
    const/4 p1, 0x2

    .line 771
    goto :goto_0

    .line 774
    :pswitch_3
    const/4 p1, 0x3

    .line 775
    goto :goto_0

    .line 778
    :pswitch_4
    const/4 p1, 0x4

    .line 779
    goto :goto_0

    .line 782
    :pswitch_5
    const/4 p1, 0x5

    .line 783
    goto :goto_0

    .line 786
    :pswitch_6
    const/16 p1, 0xa

    .line 787
    goto :goto_0

    .line 790
    :pswitch_7
    const/16 p1, 0xb

    .line 791
    goto :goto_0

    .line 794
    :pswitch_8
    const/16 p1, 0xc

    .line 795
    goto :goto_0

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public switchNetworkTypeSingleToDual(I)I
    .locals 3
    .parameter "networkType"

    .prologue
    .line 803
    const-string v0, "plugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchNetworkTypeSingleToDual() networkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->getDataSubscription()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 805
    packed-switch p1, :pswitch_data_0

    .line 834
    :cond_0
    :goto_0
    :pswitch_0
    return p1

    .line 807
    :pswitch_1
    const/16 p1, 0x12

    .line 808
    goto :goto_0

    .line 810
    :pswitch_2
    const/16 p1, 0x13

    .line 811
    goto :goto_0

    .line 813
    :pswitch_3
    const/16 p1, 0x14

    .line 814
    goto :goto_0

    .line 816
    :pswitch_4
    const/16 p1, 0x15

    .line 817
    goto :goto_0

    .line 819
    :pswitch_5
    const/16 p1, 0x16

    .line 820
    goto :goto_0

    .line 822
    :pswitch_6
    const/16 p1, 0x17

    .line 823
    goto :goto_0

    .line 825
    :pswitch_7
    const/16 p1, 0x18

    .line 826
    goto :goto_0

    .line 828
    :pswitch_8
    const/16 p1, 0x19

    .line 829
    goto :goto_0

    .line 805
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public switchToSim1DataNetwork()V
    .locals 3

    .prologue
    .line 694
    const-string v1, "plugin"

    const-string v2, "switchToSim1DataNetwork()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v0, Landroid/plugin/dsds/PlugInDsdsServiceImpl$1;

    invoke-direct {v0, p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl$1;-><init>(Landroid/plugin/dsds/PlugInDsdsServiceImpl;)V

    .line 703
    .local v0, switchThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 704
    return-void
.end method

.method public switchToSim1DataNetwork(Z)V
    .locals 4
    .parameter "force"

    .prologue
    .line 720
    const-string v1, "plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToSim1DataNetwork() force:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    if-eqz p1, :cond_0

    .line 722
    new-instance v0, Landroid/plugin/dsds/PlugInDsdsServiceImpl$3;

    invoke-direct {v0, p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl$3;-><init>(Landroid/plugin/dsds/PlugInDsdsServiceImpl;)V

    .line 730
    .local v0, switchThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 734
    .end local v0           #switchThread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 732
    :cond_0
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->switchToSim1DataNetwork()V

    goto :goto_0
.end method

.method public switchToSim2DataNetwork()V
    .locals 3

    .prologue
    .line 707
    const-string v1, "plugin"

    const-string v2, "switchToSim2DataNetwork()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v0, Landroid/plugin/dsds/PlugInDsdsServiceImpl$2;

    invoke-direct {v0, p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl$2;-><init>(Landroid/plugin/dsds/PlugInDsdsServiceImpl;)V

    .line 716
    .local v0, switchThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 717
    return-void
.end method

.method public switchToSim2DataNetwork(Z)V
    .locals 4
    .parameter "force"

    .prologue
    .line 737
    const-string v1, "plugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchToSim2DataNetwork() force:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    if-eqz p1, :cond_0

    .line 739
    new-instance v0, Landroid/plugin/dsds/PlugInDsdsServiceImpl$4;

    invoke-direct {v0, p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl$4;-><init>(Landroid/plugin/dsds/PlugInDsdsServiceImpl;)V

    .line 747
    .local v0, switchThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 751
    .end local v0           #switchThread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 749
    :cond_0
    invoke-virtual {p0}, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->switchToSim2DataNetwork()V

    goto :goto_0
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    .locals 9
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"
    .parameter "simSlot"

    .prologue
    const/4 v8, 0x0

    .line 931
    :try_start_0
    const-string v0, "simphonebook_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBookMSim;

    move-result-object v0

    iput-object v0, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    .line 932
    iget-object v0, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/IIccPhoneBookMSim;->updateAdnRecordsInEfByIndexOnSubscription(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 937
    :goto_0
    return v0

    .line 933
    :catch_0
    move-exception v7

    .local v7, ex:Landroid/os/RemoteException;
    move v0, v8

    .line 934
    goto :goto_0

    .line 935
    .end local v7           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .local v7, ex:Ljava/lang/NullPointerException;
    move v0, v8

    .line 937
    goto :goto_0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 9
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"
    .parameter "simSlot"

    .prologue
    .line 919
    :try_start_0
    const-string v0, "simphonebook_msim"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IIccPhoneBookMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBookMSim;

    move-result-object v0

    iput-object v0, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    .line 920
    iget-object v0, p0, Landroid/plugin/dsds/PlugInDsdsServiceImpl;->mMSimIccIpb:Lcom/android/internal/telephony/IIccPhoneBookMSim;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/IIccPhoneBookMSim;->updateAdnRecordsInEfBySearchOnSubscription(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 925
    :goto_0
    return v0

    .line 921
    :catch_0
    move-exception v8

    .line 922
    .local v8, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    goto :goto_0

    .line 923
    .end local v8           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 925
    .local v8, ex:Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateSmsServiceCenterOnSim(Ljava/lang/String;I)Z
    .locals 1
    .parameter "scAddress"
    .parameter "subscription"

    .prologue
    .line 1129
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsManager;->updateSmsServiceCenterOnSim(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
