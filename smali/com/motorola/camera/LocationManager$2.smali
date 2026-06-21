.class public final Lcom/motorola/camera/LocationManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public mLastLocation:Landroid/location/Location;

.field public final synthetic this$0:Lcom/motorola/camera/LocationManager;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/LocationManager$2;->this$0:Lcom/motorola/camera/LocationManager;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/LocationManager$2;->mLastLocation:Landroid/location/Location;

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .locals 9

    iget-object v0, p0, Lcom/motorola/camera/LocationManager$2;->mLastLocation:Landroid/location/Location;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-lez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    const-wide/32 v6, -0x1d4c0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-lez v2, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    if-eqz v4, :cond_4

    goto :goto_7

    :cond_4
    if-eqz v6, :cond_5

    goto/16 :goto_9

    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    if-lez v3, :cond_6

    move v4, v5

    goto :goto_3

    :cond_6
    move v4, v1

    :goto_3
    if-gez v3, :cond_7

    move v6, v5

    goto :goto_4

    :cond_7
    move v6, v1

    :goto_4
    const/16 v7, 0xc8

    if-le v3, v7, :cond_8

    move v3, v5

    goto :goto_5

    :cond_8
    move v3, v1

    :goto_5
    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v7

    if-nez v0, :cond_a

    if-nez v7, :cond_9

    goto :goto_6

    :cond_9
    move v5, v1

    goto :goto_6

    :cond_a
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_6
    if-eqz v6, :cond_b

    goto :goto_7

    :cond_b
    if-eqz v2, :cond_c

    if-nez v4, :cond_c

    goto :goto_7

    :cond_c
    if-eqz v2, :cond_e

    if-nez v3, :cond_e

    if-eqz v5, :cond_e

    :goto_7
    iget-object v0, p0, Lcom/motorola/camera/LocationManager$2;->mLastLocation:Landroid/location/Location;

    if-nez v0, :cond_d

    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/motorola/camera/LocationManager$2;->mLastLocation:Landroid/location/Location;

    goto :goto_8

    :cond_d
    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    :goto_8
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/motorola/camera/LocationManager$2;->this$0:Lcom/motorola/camera/LocationManager;

    invoke-virtual {p0}, Lcom/motorola/camera/LocationManager;->stopReceivingLocationUpdates()V

    iget-object p0, p0, Lcom/motorola/camera/LocationManager;->mStopReceiveLocationRunnable:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;

    invoke-static {p0, v1}, Lcom/motorola/camera/LocationManager;->postStopReceiveLocationCallback(Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;Z)V

    :cond_e
    :goto_9
    return-void
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/LocationManager$2;->this$0:Lcom/motorola/camera/LocationManager;

    invoke-virtual {p0}, Lcom/motorola/camera/LocationManager;->stopReceivingLocationUpdates()V

    iget-object p0, p0, Lcom/motorola/camera/LocationManager;->mStopReceiveLocationRunnable:Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/motorola/camera/LocationManager;->postStopReceiveLocationCallback(Lcom/motorola/camera/LocationManager$$ExternalSyntheticLambda1;Z)V

    :cond_1
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/LocationManager;->isAnyProviderEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->GEO_LOCATION_STATUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method
