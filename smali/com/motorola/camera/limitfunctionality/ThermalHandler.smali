.class public final Lcom/motorola/camera/limitfunctionality/ThermalHandler;
.super Lcom/motorola/camera/limitfunctionality/LimiterHandler;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/Notifier$Listener;


# static fields
.field public static final FEATURES_LEVEL_2:Ljava/util/EnumSet;

.field public static volatile mThermalLevel:I


# instance fields
.field public final FEATURES_LEVEL_3:Ljava/util/EnumSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_SIZE:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v1, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->VIDEO_RESOLUTION:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    sget-object v2, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->BRIGHTNESS:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v2, v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->FEATURES_LEVEL_2:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->FEATURES_LEVEL_2:Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->FEATURES_LEVEL_3:Ljava/util/EnumSet;

    sget-object p0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->CAMERA_EXIT:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final getLimitedFeatures()Ljava/util/EnumSet;
    .locals 2

    sget v0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isJapanCarrier()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->FEATURES_LEVEL_3:Ljava/util/EnumSet;

    return-object p0

    :cond_0
    sget p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    sget-object p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->FEATURES_LEVEL_2:Ljava/util/EnumSet;

    return-object p0

    :cond_1
    const-class p0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {p0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public final onUpdate(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V
    .locals 2

    instance-of p1, p2, Landroid/os/Bundle;

    if-eqz p1, :cond_3

    check-cast p2, Landroid/os/Bundle;

    sget-object p1, Lcom/motorola/camera/settings/CustomKeyHelper;->THERMAL_LEVEL_KEY:Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;

    iget-object v0, p1, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/motorola/camera/settings/CustomKeyHelper$CaptureResultKey;->mName:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    sget-boolean p1, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    const-string p2, "ThermalHandler"

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "thermal level "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isJapanCarrier()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget p1, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    const/4 v1, 0x3

    if-lt p1, v1, :cond_1

    iput-boolean v0, p0, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->mLimited:Z

    :cond_1
    sget p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    const/4 p1, 0x2

    if-lt p0, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-static {p2, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->limitFeatures(Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public final start()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->ENV_THERMAL_LEVEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0}, Lcom/motorola/camera/Notifier;->addListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isJapanCarrier()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    iput-boolean v0, p0, Lcom/motorola/camera/limitfunctionality/LimiterHandler;->mLimited:Z

    :cond_0
    sget p0, Lcom/motorola/camera/limitfunctionality/ThermalHandler;->mThermalLevel:I

    const/4 v1, 0x2

    if-lt p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string p0, "ThermalHandler"

    invoke-static {p0, v0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->limitFeatures(Ljava/lang/String;Z)V

    return-void
.end method

.method public final stop()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    sget-object v1, Lcom/motorola/camera/Notifier$TYPE;->ENV_THERMAL_LEVEL:Lcom/motorola/camera/Notifier$TYPE;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/motorola/camera/Notifier;->removeListener(Lcom/motorola/camera/Notifier$TYPE;Lcom/motorola/camera/Notifier$Listener;)V

    return-void
.end method
