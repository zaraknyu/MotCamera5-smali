.class public final Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;
.super Lcom/motorola/camera/CameraInUseBroadcaster;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final mTwilightManager:Ljava/lang/Object;

.field public final synthetic this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;


# direct methods
.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Lcom/motorola/camera/CameraInUseBroadcaster;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 4
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo p2, "power"

    .line 5
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/app/AppCompatDelegateImpl;Landroidx/core/view/MenuHostHelper;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    .line 1
    iput-object p1, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    invoke-direct {p0, p1}, Lcom/motorola/camera/CameraInUseBroadcaster;-><init>(Landroidx/appcompat/app/AppCompatDelegateImpl;)V

    .line 2
    iput-object p2, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final createIntentFilterForBroadcastReceiver()Landroid/content/IntentFilter;
    .locals 1

    iget p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getApplyableNightMode()I
    .locals 23

    move-object/from16 v0, p0

    iget v1, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Ljava/lang/Object;

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$Api21Impl;->isPowerSaveMode(Landroid/os/PowerManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    iget-object v0, v0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->mTwilightManager:Ljava/lang/Object;

    check-cast v0, Landroidx/core/view/MenuHostHelper;

    iget-object v1, v0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v1, Landroidx/appcompat/app/TwilightManager$TwilightState;

    iget-object v2, v0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v2, Landroid/location/LocationManager;

    iget-wide v3, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    if-lez v3, :cond_1

    iget-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    goto/16 :goto_9

    :cond_1
    iget-object v0, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v0}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v5, "Failed to get last known location"

    const-string v6, "TwilightManager"

    const/4 v7, 0x0

    if-nez v0, :cond_3

    const-string v0, "network"

    :try_start_0
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v6, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move-object v0, v7

    :goto_1
    move-object v8, v0

    goto :goto_2

    :cond_3
    move-object v8, v7

    :goto_2
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v3, v0}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "gps"

    :try_start_1
    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-static {v6, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_3
    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v8}, Landroid/location/Location;->getTime()J

    move-result-wide v9

    cmp-long v0, v2, v9

    if-lez v0, :cond_6

    :goto_4
    move-object v8, v7

    goto :goto_5

    :cond_5
    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    :goto_5
    const/4 v0, 0x0

    if-eqz v8, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-object v2, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    if-nez v2, :cond_7

    new-instance v2, Landroidx/appcompat/app/TwilightCalculator;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    :cond_7
    sget-object v16, Landroidx/appcompat/app/TwilightCalculator;->sInstance:Landroidx/appcompat/app/TwilightCalculator;

    const-wide/32 v2, 0x5265c00

    sub-long v21, v14, v2

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    invoke-virtual/range {v16 .. v22}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    move-object/from16 v9, v16

    invoke-virtual/range {v9 .. v15}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    iget v5, v9, Landroidx/appcompat/app/TwilightCalculator;->state:I

    if-ne v5, v4, :cond_8

    move v0, v4

    :cond_8
    iget-wide v5, v9, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    iget-wide v10, v9, Landroidx/appcompat/app/TwilightCalculator;->sunset:J

    add-long v21, v14, v2

    invoke-virtual {v8}, Landroid/location/Location;->getLatitude()D

    move-result-wide v17

    invoke-virtual {v8}, Landroid/location/Location;->getLongitude()D

    move-result-wide v19

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v22}, Landroidx/appcompat/app/TwilightCalculator;->calculateTwilight(DDJ)V

    iget-wide v2, v9, Landroidx/appcompat/app/TwilightCalculator;->sunrise:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-eqz v9, :cond_c

    cmp-long v7, v10, v7

    if-nez v7, :cond_9

    goto :goto_7

    :cond_9
    cmp-long v7, v14, v10

    if-lez v7, :cond_a

    move-wide v5, v2

    goto :goto_6

    :cond_a
    cmp-long v2, v14, v5

    if-lez v2, :cond_b

    move-wide v5, v10

    :cond_b
    :goto_6
    const-wide/32 v2, 0xea60

    add-long/2addr v5, v2

    goto :goto_8

    :cond_c
    :goto_7
    const-wide/32 v2, 0x2932e00

    add-long v5, v14, v2

    :goto_8
    iput-boolean v0, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->isNight:Z

    iput-wide v5, v1, Landroidx/appcompat/app/TwilightManager$TwilightState;->nextUpdate:J

    goto :goto_9

    :cond_d
    const-string v1, "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values."

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_e

    const/16 v2, 0x16

    if-lt v1, v2, :cond_f

    :cond_e
    move v0, v4

    :cond_f
    :goto_9
    if-eqz v0, :cond_10

    const/4 v4, 0x2

    :cond_10
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onChange()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyApplicationSpecificConfig(Z)Z

    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/app/AppCompatDelegateImpl$AutoTimeNightModeManager;->this$0:Landroidx/appcompat/app/AppCompatDelegateImpl;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatDelegateImpl;->applyApplicationSpecificConfig(Z)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
