.class public final synthetic Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 13

    iget p0, p0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string v1, "AIPersonalColorToneManager"

    const/4 v2, 0x3

    const/4 v3, 0x1

    const-string v4, ", dur:"

    const/4 v5, 0x0

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_0

    const-string p0, "com.motorola.cn.gallery"

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mPhotosVersion:[I

    aput v6, v4, v6

    aput v6, v4, v3

    :try_start_0
    const-string v7, "com.google.android.apps.photos"

    const-wide/32 v8, 0x40000000

    invoke-static {v8, v9}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const-string v7, "getPackageInfo(...)"

    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v7, :cond_1

    new-instance v8, Lkotlin/text/Regex;

    const-string v9, "\\."

    invoke-direct {v8, v9}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v2

    new-array v7, v6, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-ne v1, v3, :cond_1

    aget-object v1, v2, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v4, v6

    aget-object v1, v2, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v4, v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    :try_start_1
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "LaunchGalleryTask"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz v5, :cond_3

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string v1, "com.motorola.camera.filmstrip.transition"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPRCFilmstripTransitionSupported:Z

    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.motorola.cn.gallery.app.FoldingGalleryActivity"

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0, p0}, Lcom/motorola/camera/utility/ColorUtil;->resolveActivityCompat$default(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    sput-boolean v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isFoldingActivityAvailable:Z

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    sget-boolean p0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_4

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 p0, 0x6

    const/16 v2, 0x1f

    invoke-static {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosVersionSupported(II)Z

    move-result v6

    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "isSupportedInternal: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AutoEnhanceManager"

    invoke-static {v0, v1, p0, v2}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_6
    :goto_4
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "requestColorToneModuleInfo:"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    :try_start_2
    sget-object v0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    invoke-virtual {v0}, Lcom/motorola/camera/colortone/AIPersonalColorToneManager;->getPhotosProviderCaller()Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "partner_authority"

    iget-object v10, v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->context:Landroid/content/Context;

    sget-object v11, Lcom/motorola/camera/provider/photos/PhotosProvider;->sAccessMap:Ljava/util/Map;

    const v11, 0x7f1203d1

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "requestModuleInfo"

    invoke-virtual {v0, v9, v3}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->callProviderMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "PhotosProviderCaller"

    const-string v3, "Bundle returned from PartnerContentProvider was null,can not get module info"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    move-object v0, v5

    :cond_7
    sget-boolean v3, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-nez v3, :cond_8

    goto :goto_6

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8, v3, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_6
    const/4 p0, -0x1

    if-nez v0, :cond_a

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getImagePreferenceSelectorValue()I

    move-result v0

    if-ne v0, v2, :cond_9

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsHelper;->updateImagePreferenceSelector(I)V

    :cond_9
    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_CUSTOMIZE_MODULE_VERSION:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->AI_PERSONAL_COLOR_TONE_CUSTOMIZE_MODULE_TRAINING_PROGRESS:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_7

    :cond_a
    const-string v1, "hasTrainingCompleteModule"

    invoke-virtual {v0, v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    const-string v1, "moduleVersion"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string v1, "hasModuleInTraining"

    invoke-virtual {v0, v1, v6}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string/jumbo v1, "trainingTimeType"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo p0, "trainingProgress"

    invoke-virtual {v0, p0, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    new-instance v7, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;

    invoke-direct/range {v7 .. v12}, Lcom/motorola/camera/colortone/AIPersonalColorToneCustomizeModuleInfo;-><init>(IIIZZ)V

    move-object v5, v7

    :goto_7
    return-object v5

    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sget-object p0, Lcom/motorola/camera/colortone/AIPersonalColorToneManager$LazyLoader;->INSTANCE:Lcom/motorola/camera/colortone/AIPersonalColorToneManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    sget-object p0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.motorola.camera.ai.colortone"

    const/high16 v2, 0x20000

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    if-eqz v5, :cond_b

    iget-boolean p0, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p0, :cond_b

    goto :goto_9

    :cond_b
    move v3, v6

    :goto_9
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI_DEBUG:Z

    if-nez p0, :cond_c

    goto :goto_a

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "isColorToneAppEnabled:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7, v8, p0, v1}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    const/4 p0, 0x4

    invoke-static {p0}, Lcom/motorola/camera/JsonConfig;->getMaxJobsCnt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
