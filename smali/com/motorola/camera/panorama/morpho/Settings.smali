.class public final Lcom/motorola/camera/panorama/morpho/Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public distortion_k1:D

.field public distortion_k2:D

.field public distortion_k3:D

.field public distortion_k4:D

.field public final motion_detection_mode:I

.field public noise_reduction_level:I

.field public final projection_mode:I

.field public rotation_ratio:D

.field public final sensor_mode:I

.field public final use_round_auto_end:Z

.field public final use_round_auto_end_sensor_mode:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k1:D

    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k2:D

    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k3:D

    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->distortion_k4:D

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-wide v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoRotationRatio:D

    iput-wide v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->rotation_ratio:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->noise_reduction_level:I

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "GyroScope"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iput v4, p0, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    goto :goto_0

    :cond_0
    const-string v3, "Rotation Vector"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    iput v1, p0, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/camera/panorama/morpho/Settings;->sensor_mode:I

    :goto_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_END_SENSOR_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v4, p0, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end_sensor_mode:I

    goto :goto_1

    :cond_2
    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end_sensor_mode:I

    :goto_1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_AUTO_ROUND_END:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/camera/panorama/morpho/Settings;->use_round_auto_end:Z

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_PROJECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "Equirectangular"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->projection_mode:I

    goto :goto_2

    :cond_3
    iput v4, p0, Lcom/motorola/camera/panorama/morpho/Settings;->projection_mode:I

    :goto_2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->PANO_MOTION_DETECTION_MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "Fast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput v0, p0, Lcom/motorola/camera/panorama/morpho/Settings;->motion_detection_mode:I

    return-void

    :cond_4
    iput v4, p0, Lcom/motorola/camera/panorama/morpho/Settings;->motion_detection_mode:I

    return-void
.end method
