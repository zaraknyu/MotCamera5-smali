.class public abstract Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mBYHistAva:F

.field public static final mBYHistAvaList:Ljava/util/ArrayList;

.field public static mExpLv:I

.field public static final mExpLvData:[I

.field public static mExpLvDataIdx:I

.field public static mIsMoonDetected:Z

.field public static mMinInterval:I

.field public static final mMoonDetectedHist:Ljava/util/ArrayList;

.field public static mMoonYHistList:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x38

    const/16 v1, 0x39

    const/16 v2, 0x28

    const/16 v3, 0x37

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLvData:[I

    const/4 v0, 0x3

    sput v0, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mExpLvDataIdx:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mMoonDetectedHist:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mBYHistAvaList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mMoonYHistList:[I

    sput-boolean v0, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mIsMoonDetected:Z

    const/high16 v1, -0x40800000    # -1.0f

    sput v1, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mBYHistAva:F

    sput v0, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mMinInterval:I

    return-void
.end method

.method public static getBYHistAva()F
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMcfSupportedByCurrentCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/motorola/camera/settings/SettingsHelper$MoonDetectHelper;->mBYHistAva:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method
