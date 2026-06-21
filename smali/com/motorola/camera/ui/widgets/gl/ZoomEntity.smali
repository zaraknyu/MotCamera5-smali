.class public abstract Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ZOOM_TELE_EXTRA_RATIO:F

.field public static final ZOOM_TELE_ULTRA_RATIO:F


# instance fields
.field public mCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

.field public mEnabled:Z

.field public final mIsCliDisplay:Z

.field public final mJsonConfigManualSegments:[F

.field public final mJsonConfigSegments:[F

.field public mLimited:Z

.field public mRecording:Z

.field public mZoomRatioRange:Landroid/util/Range;

.field public final mZoomSegment:Lcom/motorola/camera/utility/ZoomSegment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->getTeleExtraValue()F

    move-result v0

    sput v0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->ZOOM_TELE_EXTRA_RATIO:F

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mActionShotZoomSegments:Ljava/util/Map;

    sget-object v1, Lcom/motorola/camera/utility/ZoomSegment;->T_U:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    sput v0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->ZOOM_TELE_ULTRA_RATIO:F

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/settings/CameraType;Lcom/motorola/camera/utility/ZoomSegment;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/Range;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    sget-object v1, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mRecording:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mLimited:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mJsonConfigSegments:[F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mJsonConfigManualSegments:[F

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomSegment:Lcom/motorola/camera/utility/ZoomSegment;

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    iput-boolean p3, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mIsCliDisplay:Z

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->hasValidBlendingConfig()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mJsonConfigSegments:[F

    :cond_0
    sget-object p1, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object p1, p1, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingManualX:[F

    if-eqz p1, :cond_1

    array-length p2, p1

    const/4 p3, 0x2

    if-lt p2, p3, :cond_1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mJsonConfigManualSegments:[F

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->setupZoomConfig()V

    return-void
.end method


# virtual methods
.method public final getMaxZoomX()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final getMinZoomX()F
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public final isZoomBendingCamera()Z
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->isZoomBlendingCameraType(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/motorola/camera/settings/CameraType;->ZOOM_BLENDING:Lcom/motorola/camera/settings/CameraType;

    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsManager;->hasCamera(Lcom/motorola/camera/settings/CameraType;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isZoomBlendingSupportedMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isZoomRangeLimited()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/motorola/camera/utility/ZoomHelper;->isMainCameraOnlyVideoModes()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final keepEnableWhileRecording()Z
    .locals 3

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mIsCliDisplay:Z

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->isKnifeSwitchAllowedWhileRecording(Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity$1;->$SwitchMap$com$motorola$camera$settings$CameraType:[I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCurrentCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomSegment:Lcom/motorola/camera/utility/ZoomSegment;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W:Lcom/motorola/camera/utility/ZoomSegment;

    if-eq p0, v0, :cond_3

    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->W_2X:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/motorola/camera/utility/ZoomSegment;->UW:Lcom/motorola/camera/utility/ZoomSegment;

    if-ne p0, v0, :cond_4

    :cond_3
    :goto_0
    return v1

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public refreshZoomLimit()V
    .locals 0

    return-void
.end method

.method public setVideoRecording(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mRecording:Z

    return-void
.end method

.method public abstract setupZoomConfig()V
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ZoomEntity{mZoomSegment="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomSegment:Lcom/motorola/camera/utility/ZoomSegment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mCameraType:Lcom/motorola/camera/settings/CameraType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mZoomRatioRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mZoomRatioRange:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLimited="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/motorola/camera/ui/widgets/gl/ZoomEntity;->mLimited:Z

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
