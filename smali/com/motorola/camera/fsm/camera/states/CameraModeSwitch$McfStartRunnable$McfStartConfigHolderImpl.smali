.class public final Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mcf/Mcf$StartConfigHolder;


# instance fields
.field public final mAllCameraCharacteristics:[Landroid/hardware/camera2/CameraCharacteristics;

.field public final mAllCameraIds:[Ljava/lang/String;

.field public final mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field public final mCameraCharacteristicsForCalibration:Landroid/hardware/camera2/CameraCharacteristics;

.field public final mCameraId:Ljava/lang/String;

.field public final mDualCalibrationDataVendor:Ljava/lang/String;

.field public final mIsMoonDetectSupported:Z

.field public final mIsOutDoorDetectSupported:Z

.field public final mLogicalCameraInfo:Lcom/google/zxing/Result;

.field public final mMcfSensorName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualLogicalCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraId:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    :goto_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->isBackLogicalDepthCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lcom/motorola/camera/JsonConfig;->getJsonIndex(Lcom/motorola/camera/settings/CameraType;)I

    move-result v2

    sget-object v3, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v3, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v2, v3, v2

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    :cond_2
    :goto_1
    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Lcom/motorola/camera/settings/CameraType;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mCameraCharacteristicsForCalibration:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->getCurrentCameraType()Lcom/motorola/camera/settings/CameraType;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/motorola/camera/settings/SettingsManager;->getMcfSensorName(Lcom/motorola/camera/settings/CameraType;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mMcfSensorName:Ljava/lang/String;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isLogicalCamera(Ljava/lang/String;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_6

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getMainPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getAuxPhysicalCameraId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_3
    move-object v3, v1

    goto :goto_4

    :cond_4
    move-object v2, v3

    goto :goto_3

    :cond_5
    move-object v2, v3

    goto :goto_4

    :cond_6
    move-object v0, v3

    move-object v2, v0

    :goto_4
    new-instance v1, Lcom/google/zxing/Result;

    const/16 v4, 0x10

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/google/zxing/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mLogicalCameraInfo:Lcom/google/zxing/Result;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/settings/SettingsManager;

    iget-object v1, v0, Lcom/motorola/camera/settings/SettingsManager;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mAllCameraIds:[Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager;->mCameraCharacteristicsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-array v0, v1, [Landroid/hardware/camera2/CameraCharacteristics;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mAllCameraCharacteristics:[Landroid/hardware/camera2/CameraCharacteristics;

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_7

    iget-object v2, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mAllCameraCharacteristics:[Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v3, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mAllCameraIds:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->getCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualCalibrationDataVendor:Ljava/lang/String;

    iput-object v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mDualCalibrationDataVendor:Ljava/lang/String;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isMoonDetectSupported(Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mIsMoonDetectSupported:Z

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isOutDoorDetectSupported(Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch$McfStartRunnable$McfStartConfigHolderImpl;->mIsOutDoorDetectSupported:Z

    return-void
.end method
