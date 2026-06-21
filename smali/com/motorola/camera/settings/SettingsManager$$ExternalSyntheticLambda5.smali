.class public final synthetic Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Size;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda5;->f$0:Z

    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda5;->f$1:Landroid/util/Size;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Landroid/util/Size;

    sget-object v0, Lcom/motorola/camera/VideoFormat;->FHD_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda5;->f$0:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/VideoFormat;->UHD_4K_SIZES:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda5;->f$1:Landroid/util/Size;

    invoke-static {p1, p0}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(Landroid/util/Size;Landroid/util/Size;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
