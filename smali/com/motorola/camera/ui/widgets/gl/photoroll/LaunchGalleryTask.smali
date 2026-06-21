.class public abstract Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static cachePhotosInfoFuture:Ljava/util/concurrent/CompletableFuture;

.field public static isFoldingActivityAvailable:Z

.field public static isPRCFilmstripTransitionSupported:Z

.field public static final mPhotosVersion:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mPhotosVersion:[I

    return-void
.end method

.method public static addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->isSecureKeyGuardLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const-string/jumbo p1, "start_gallery_from_secure_camera"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object p1, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    if-nez p1, :cond_0

    new-instance p1, Lcom/motorola/camera/SecureDataHelper;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/motorola/camera/SecureDataHelper;-><init>(I)V

    sput-object p1, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    :cond_0
    sget-object p1, Lcom/motorola/camera/SecureDataHelper;->sInstance:Lcom/motorola/camera/SecureDataHelper;

    iget-object p1, p1, Lcom/motorola/camera/SecureDataHelper;->mSecureDataList:Ljava/lang/Object;

    check-cast p1, Ljava/util/LinkedList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    const-string/jumbo p1, "{items:%s}"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "security_items"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void

    :cond_3
    const-string p1, "com.google.android.apps.photos.api.secure_mode"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/motorola/camera/SecureMediaIdsManager;->getMediaIds()[J

    move-result-object p1

    const-string v0, "com.google.android.apps.photos.api.secure_mode_ids"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    :cond_4
    :goto_1
    return-void
.end method

.method public static getGalleryApplicationInfo(IZ)Landroid/content/pm/ApplicationInfo;
    .locals 3

    :try_start_0
    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "com.motorola.cn.gallery"

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.apps.photos"

    :goto_0
    int-to-long v1, p0

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "LaunchGalleryTask"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGalleryIntent(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZZ)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eqz p4, :cond_0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    div-int/2addr p4, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    invoke-static {p1, p4, v3, v1, v1}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    sget-boolean p4, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p4

    const-string/jumbo v3, "video/*"

    const-string v4, "image/*"

    if-eqz p0, :cond_5

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.android.camera.action.REVIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v4

    goto :goto_1

    :cond_2
    move-object v6, v3

    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Lcom/motorola/camera/provider/photos/PhotosProvider;->getProcessingUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v6

    const-string/jumbo v7, "processing_uri_intent_extra"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {v5, p4, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setGalleryPackage(Landroid/content/Intent;ZZZ)V

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-string v7, "image/jpeg"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v5, p4}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V

    new-instance v6, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v7

    invoke-direct {v6, v5, v0, v7, p1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    goto :goto_3

    :cond_3
    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->getMediaStoreUri(Lcom/motorola/camera/CameraData;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {v5, p4}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->addMediaIdsExtraForSecureLaunch(Landroid/content/Intent;Z)V

    goto :goto_2

    :cond_4
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    const/high16 v6, 0x20000

    invoke-static {v6, p4}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryApplicationInfo(IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_5

    invoke-static {v5, p4, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setGalleryPackage(Landroid/content/Intent;ZZZ)V

    new-instance v6, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v7

    invoke-direct {v6, v5, v0, v7, p1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    goto :goto_3

    :cond_5
    move-object v6, v2

    :goto_3
    if-nez v6, :cond_c

    if-nez p0, :cond_9

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "android.intent.category.APP_GALLERY"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-wide/16 v7, 0x40

    invoke-static {v7, v8}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Ljava/util/List;

    move-result-object v6

    const-string/jumbo v7, "queryIntentActivities(...)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_6

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_6

    if-eqz p4, :cond_7

    const-string v8, "com.motorola.cn.gallery"

    goto :goto_4

    :cond_7
    const-string v8, "com.google.android.apps.photos"

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v3, p4, p2, p3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->setGalleryPackage(Landroid/content/Intent;ZZZ)V

    goto :goto_5

    :cond_8
    invoke-static {v4, v5}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string p2, "makeMainSelectorActivity(...)"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/motorola/camera/storage/StorageUtils;->getMediaStoreUri(Lcom/motorola/camera/CameraData;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getDataType()I

    move-result p4

    if-nez p4, :cond_a

    move-object v3, v4

    :cond_a
    invoke-virtual {p2, p3, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, p2

    :goto_5
    new-instance v6, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getOrientation()I

    move-result v1

    :cond_b
    invoke-direct {v6, v3, v0, v1, p1}, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;-><init>(Landroid/content/Intent;IILandroid/os/Bundle;)V

    :cond_c
    iget-object p1, v6, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    sget-boolean p2, Lcom/motorola/camera/Util;->STABILITY_DEBUG:Z

    if-eqz p2, :cond_12

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_6

    :cond_d
    move-object p2, v2

    :goto_6
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->getFileName()Ljava/lang/String;

    move-result-object p3

    goto :goto_7

    :cond_e
    move-object p3, v2

    :goto_7
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_8

    :cond_f
    move-object p0, v2

    :goto_8
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p4

    if-eqz p4, :cond_10

    goto :goto_9

    :cond_10
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    :cond_11
    move-object p4, v2

    :goto_9
    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->isSecureKeyGuardLocked()Z

    move-result p1

    invoke-static {}, Lcom/motorola/camera/SecureMediaIdsManager;->getInstance()Lcom/motorola/camera/SecureMediaIdsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/SecureMediaIdsManager;->getMediaIds()[J

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[processing_api] mediaId "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", filename: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", isProcessing: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", target: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", isSecure: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", secureMediaIds: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LaunchGalleryTask"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return-object v6
.end method

.method public static final isGalleryAvailable(Lcom/motorola/camera/CameraData;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/CameraData;->isProcessingUri()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v2, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryIntent(Lcom/motorola/camera/CameraData;Landroid/view/View;ZZZ)Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;

    move-result-object p0

    iget-object p0, p0, Lcom/motorola/camera/Util$ActivityLaunchRequestInfo;->intent:Landroid/content/Intent;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1, p0}, Lcom/motorola/camera/utility/ColorUtil;->resolveActivityCompat$default(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v2
.end method

.method public static final isPhotosProcessingSupported()Z
    .locals 2

    sget-boolean v0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, 0x20000

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->getGalleryApplicationInfo(IZ)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x2

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosVersionSupported(II)Z

    move-result v0

    return v0
.end method

.method public static final isPhotosStabilizationSupported(Z)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x3

    const/16 v0, 0x1a

    invoke-static {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isPhotosVersionSupported(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final isPhotosVersionSupported(II)Z
    .locals 4

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->cachePhotosInfoFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/states/SingleShotStates$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->cachePhotosInfoFuture:Ljava/util/concurrent/CompletableFuture;

    :goto_0
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->cachePhotosInfoFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->mPhotosVersion:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-gt v2, p0, :cond_3

    if-ne v2, p0, :cond_2

    aget p0, v0, v3

    if-lt p0, p1, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v3
.end method

.method public static final setBrightnessForLaunch(Landroid/content/Intent;Landroidx/activity/ComponentActivity;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->getScreenBrightnessAdjustmentOffset()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "getWindow(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p1, v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/motorola/camera/utility/ColorUtil;->getCurrentBrightness()F

    move-result p1

    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "brightness"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    :cond_2
    :goto_0
    return-void
.end method

.method public static setGalleryPackage(Landroid/content/Intent;ZZZ)V
    .locals 0

    if-eqz p1, :cond_2

    new-instance p1, Landroid/content/ComponentName;

    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    sget-boolean p2, Lcom/motorola/camera/ui/widgets/gl/photoroll/LaunchGalleryTask;->isFoldingActivityAvailable:Z

    if-eqz p2, :cond_1

    const-string p2, "com.motorola.cn.gallery.app.FoldingGalleryActivity"

    goto :goto_0

    :cond_1
    const-string p2, "com.motorola.cn.gallery.app.GalleryActivity"

    :goto_0
    const-string p3, "com.motorola.cn.gallery"

    invoke-direct {p1, p3, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo p1, "start_gallery_from_camera"

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void

    :cond_2
    const-string p1, "com.google.android.apps.photos"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
