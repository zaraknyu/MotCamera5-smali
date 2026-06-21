.class public final Lcom/motorola/camera/launch/LaunchManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLI_TO_MAIN_MODE_MAPPING:Ljava/lang/Object;

.field public static final FRONT_FACING_MODES:Ljava/util/List;

.field public static final MAIN_TO_CLI_MODE_MAPPING:Ljava/lang/Object;


# instance fields
.field public callback:Lcom/motorola/camera/Camera;

.field public final flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

.field public lidValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x1f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lkotlin/Pair;

    invoke-direct {v5, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v3, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v8, 0x2f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Lkotlin/Pair;

    invoke-direct {v9, v8, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v4, 0x2e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v10, Lkotlin/Pair;

    invoke-direct {v10, v4, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v5, v7, v9, v10}, [Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/motorola/camera/launch/LaunchManager;->CLI_TO_MAIN_MODE_MAPPING:Ljava/lang/Object;

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v6, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v0}, [Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/launch/LaunchManager;->MAIN_TO_CLI_MODE_MAPPING:Ljava/lang/Object;

    const/16 v0, 0x30

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/launch/LaunchManager;->FRONT_FACING_MODES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/motorola/camera/launch/LaunchManager;->flipObserver:Lcom/motorola/camera/launch/LaunchManager$flipObserver$1;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/launch/LaunchManager;->lidValue:I

    return-void
.end method

.method public static launch(IILcom/motorola/camera/Camera;ZZ)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {p2, v0, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v3, 0x14000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->isKeyguardSecure()Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne p1, v3, :cond_1

    const-string v4, "motorola.camera.intent.action.STILL_IMAGE_PREVIEW_SECURE"

    goto :goto_1

    :cond_1
    const-string v4, "android.motorola.action.STILL_IMAGE_CAMERA_SECURE_CLI"

    :goto_1
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_2
    if-ne p1, v3, :cond_3

    const-string v4, "motorola.camera.intent.action.STILL_IMAGE_PREVIEW"

    goto :goto_2

    :cond_3
    const-string v4, "android.motorola.action.STILL_IMAGE_CAMERA_CLI"

    :goto_2
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_4
    :goto_3
    const-string v4, "motorola.camera.intent.extra.ANALYTICS_PROCESSED"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v4, "com.motorola.camera.LAUNCH_ON_FLIP_CHANGED"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p3, :cond_5

    const-string p3, "com.android.systemui.camera_launch_source"

    const-string v4, "flip_changed"

    invoke-virtual {v2, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    if-nez p1, :cond_6

    const-class p1, Lcom/motorola/camera/cli/camera/CliCameraActivity;

    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move p1, v3

    goto :goto_5

    :cond_6
    if-eqz p4, :cond_7

    const-class p1, Lcom/motorola/camera/SecureCamera;

    goto :goto_4

    :cond_7
    const-class p1, Lcom/motorola/camera/Camera;

    :goto_4
    invoke-virtual {v2, p2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move p1, v0

    :goto_5
    if-ne p1, v3, :cond_a

    sget-object p3, Lcom/motorola/camera/launch/LaunchManager;->MAIN_TO_CLI_MODE_MAPPING:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_8
    invoke-static {p0}, Lcom/motorola/camera/settings/SettingsHelper;->isCliAllowedMode(I)Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_6

    :cond_9
    move p0, v0

    goto :goto_6

    :cond_a
    sget-object p3, Lcom/motorola/camera/launch/LaunchManager;->CLI_TO_MAIN_MODE_MAPPING:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :cond_b
    :goto_6
    sget-object p3, Lcom/motorola/camera/shared/Util;->INDIA_PROPERTY_CARRIER_VALUES:Ljava/util/List;

    sget-object p3, Lcom/motorola/camera/settings/SettingsManager;->MODE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/motorola/camera/settings/ModeSettingsHelper;->setSliderMenuMode(I)V

    sget-object p3, Lcom/motorola/camera/launch/LaunchManager;->FRONT_FACING_MODES:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const-string p0, "android.intent.extra.USE_FRONT_CAMERA"

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_c
    invoke-virtual {v1, p1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p2, v2, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method
