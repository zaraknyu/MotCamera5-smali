.class public final Lcom/motorola/camera/limitfunctionality/BatteryHandler;
.super Lcom/motorola/camera/limitfunctionality/LimiterHandler;
.source "SourceFile"


# static fields
.field public static final FEATURES_1_PERC:Ljava/util/EnumSet;


# instance fields
.field public mACCharging:Z

.field public mBatteryLevel:F

.field public final mBatterySaverReceiver:Lcom/motorola/camera/SecureCamera$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;->RECORD_STOP:Lcom/motorola/camera/limitfunctionality/FeatureLimiter$FeatureType;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_1_PERC:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/SecureCamera$1;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/SecureCamera$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatterySaverReceiver:Lcom/motorola/camera/SecureCamera$1;

    return-void
.end method


# virtual methods
.method public final getLimitedFeatures()Ljava/util/EnumSet;
    .locals 0

    sget-object p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->FEATURES_1_PERC:Ljava/util/EnumSet;

    return-object p0
.end method

.method public final processBatteryStatus(Landroid/content/Intent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mACCharging:Z

    const-string v0, "level"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "scale"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne v0, v1, :cond_2

    if-eq p1, v1, :cond_3

    :cond_2
    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatteryLevel:F

    :cond_3
    iget-boolean p1, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mACCharging:Z

    xor-int/2addr p1, v3

    iget p0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatteryLevel:F

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_4

    move v2, v3

    :cond_4
    and-int p0, p1, v2

    const-string p1, "BatteryHandler"

    invoke-static {p1, p0}, Landroidx/sqlite/db/SimpleSQLiteQuery;->limitFeatures(Ljava/lang/String;Z)V

    return-void
.end method

.method public final start()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object v2, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatterySaverReceiver:Lcom/motorola/camera/SecureCamera$1;

    const/16 v3, 0x18

    invoke-static {v1, v2, v0, v3}, Lcom/motorola/camera/shared/ReceiverUtil;->registerReceiver$default(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->processBatteryStatus(Landroid/content/Intent;)V

    return-void
.end method

.method public final stop()V
    .locals 1

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    iget-object p0, p0, Lcom/motorola/camera/limitfunctionality/BatteryHandler;->mBatterySaverReceiver:Lcom/motorola/camera/SecureCamera$1;

    invoke-static {v0, p0}, Lcom/motorola/camera/shared/ReceiverUtil;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method
