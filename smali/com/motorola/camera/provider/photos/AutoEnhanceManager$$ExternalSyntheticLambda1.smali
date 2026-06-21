.class public final synthetic Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

.field public final synthetic f$1:Landroid/net/Uri;

.field public final synthetic f$2:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/provider/photos/PhotosProviderCaller;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    iput-object p2, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    iput-object p3, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda1;->f$2:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda1;->f$1:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/provider/photos/PhotosProviderCaller;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, v1, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->context:Landroid/content/Context;

    sget-object v4, Lcom/motorola/camera/provider/photos/PhotosProvider;->sAccessMap:Ljava/util/Map;

    const v4, 0x7f1203d1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "partner_authority"

    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "file_name"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "output_uri"

    iget-object p0, p0, Lcom/motorola/camera/provider/photos/AutoEnhanceManager$$ExternalSyntheticLambda1;->f$2:Landroid/net/Uri;

    invoke-virtual {v2, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "applyEnhance"

    invoke-virtual {v1, v0, v2}, Lcom/motorola/camera/provider/photos/PhotosProviderCaller;->callProviderMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "PhotosProviderCaller"

    const-string v0, "Bundle returned from PartnerContentProvider was null, enhance failed"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method
