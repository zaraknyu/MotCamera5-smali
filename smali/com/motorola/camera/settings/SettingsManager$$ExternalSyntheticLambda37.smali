.class public final synthetic Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda37;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda37;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda37;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda37;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/motorola/camera/VideoFormat;

    iget-object v0, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    iget-object v1, p1, Lcom/motorola/camera/VideoFormat;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda37;->f$0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/motorola/camera/VideoFormat;->mVideoCaptureRate:Landroid/util/Range;

    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda37;->f$1:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/settings/SettingsManager$$ExternalSyntheticLambda37;->f$2:Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lcom/motorola/camera/utility/ColorUtil;->hasAspectRatio(Ljava/util/ArrayList;Landroid/util/Size;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v1}, Lcom/motorola/camera/PreviewSize;->getSupportedAspectRatio(Landroid/util/Size;)Lcom/motorola/camera/PreviewSize$AspectRatio;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
