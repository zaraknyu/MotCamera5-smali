.class public final Lcom/motorola/camera/provider/photos/PhotosProviderCaller;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final AI_PERSONAL_COLOR_TONE_AUTHORITY_URI:Landroid/net/Uri;

.field public static final GALLERY_AUTHORITY_URI:Landroid/net/Uri;

.field public static final PHOTOS_AUTHORITY_URI:Landroid/net/Uri;


# instance fields
.field public client:Landroidx/transition/TransitionValuesMaps;

.field public final context:Landroid/content/Context;

.field public isTrustedAuthority:Z

.field public final providerType:Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;

.field public retryValidation:I

.field public final trustedPartners:Lcom/tinder/StateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.google.android.apps.photos.partnercontentprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "parse(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->PHOTOS_AUTHORITY_URI:Landroid/net/Uri;

    const-string v0, "content://com.motorola.cn.gallery.provider.galleryprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->GALLERY_AUTHORITY_URI:Landroid/net/Uri;

    const-string v0, "content://com.motorola.camera.ai.colortone.ModelContentProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->AI_PERSONAL_COLOR_TONE_AUTHORITY_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->providerType:Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "getApplicationContext(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->context:Landroid/content/Context;

    const/4 p2, 0x3

    iput p2, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->retryValidation:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f03000f

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    const-string v0, "getStringArray(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/collections/ArraysKt;->toSet([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    new-instance v0, Lcom/tinder/StateMachine;

    invoke-direct {v0, p1, p2}, Lcom/tinder/StateMachine;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->trustedPartners:Lcom/tinder/StateMachine;

    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->validateAuthority()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized callProviderMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "callProviderMethod: retryValidation "

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->isTrustedAuthority:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget v1, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->retryValidation:I

    if-lez v1, :cond_0

    const-string v3, "PhotosProviderCaller"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->validateAuthority()V

    iget v0, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->retryValidation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->retryValidation:I

    iget-boolean v0, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->isTrustedAuthority:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_0
    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->client:Landroidx/transition/TransitionValuesMaps;

    if-nez v0, :cond_2

    new-instance v0, Landroidx/transition/TransitionValuesMaps;

    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->getAuthority()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->context:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Landroidx/transition/TransitionValuesMaps;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->client:Landroidx/transition/TransitionValuesMaps;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->client:Landroidx/transition/TransitionValuesMaps;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Landroidx/transition/TransitionValuesMaps;->acquireClientIfNeeded()Landroid/content/ContentProviderClient;

    move-result-object v3

    invoke-virtual {v3, p1, v2, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_3
    .catch Landroid/os/DeadObjectException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_4
    invoke-virtual {v0}, Landroidx/transition/TransitionValuesMaps;->closeClient()V

    const/4 v4, 0x2

    if-eq v1, v4, :cond_3

    iget-object v3, v0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider was possibly killed, retry. Tries "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p2, v0, Landroidx/transition/TransitionValuesMaps;->mItemIdValues:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    const-string v0, "All tries failed, exit"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    :try_start_5
    const-string v0, "PhotosProviderCaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling provider method "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    :goto_2
    monitor-exit p0

    return-object v2

    :goto_3
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method

.method public final canApplyColorTone(I)Z
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lcom/motorola/camera/provider/photos/PhotosProvider;->sAccessMap:Ljava/util/Map;

    const v1, 0x7f1203d1

    iget-object v2, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "partner_authority"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "moduleType"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "canApplyColorTone"

    invoke-virtual {p0, p1, v0}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->callProviderMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "PhotosProviderCaller"

    const-string p1, "Bundle returned from PartnerContentProvider was null,can not apply color tone"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->client:Landroidx/transition/TransitionValuesMaps;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/transition/TransitionValuesMaps;->closeClient()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getAuthority()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->providerType:Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;

    sget-object v0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;->TYPE_PHOTO:Lcom/motorola/camera/provider/photos/PhotosProviderCaller$ProviderType;

    if-ne p0, v0, :cond_1

    sget-boolean p0, Lcom/motorola/camera/Util;->USERDEBUG_BUILD:Z

    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "com.motorola.cn.gallery.provider.galleryprovider"

    return-object p0

    :cond_0
    const-string p0, "com.google.android.apps.photos.partnercontentprovider"

    return-object p0

    :cond_1
    const-string p0, "com.motorola.camera.ai.colortone.ModelContentProvider"

    return-object p0
.end method

.method public final validateAuthority()V
    .locals 2

    invoke-virtual {p0}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->getAuthority()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->trustedPartners:Lcom/tinder/StateMachine;

    invoke-virtual {v1, v0}, Lcom/tinder/StateMachine;->isTrustedAuthority(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->isTrustedAuthority:Z

    if-nez v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Application is not authorized to access the content. "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " may be disabled, not available or not trusted"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PhotosProviderCaller"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
