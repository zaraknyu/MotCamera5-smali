.class public final synthetic Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Landroid/util/Size;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Size;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda3;->f$0:Landroid/util/Size;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroid/util/Size;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda3;->f$0:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    if-ne p1, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda3;->f$0:Landroid/util/Size;

    check-cast p1, Landroid/util/Size;

    invoke-virtual {p1, p0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Landroid/util/Size;

    iget-object p0, p0, Lcom/motorola/camera/VideoHelper$$ExternalSyntheticLambda3;->f$0:Landroid/util/Size;

    invoke-static {p0}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result p0

    invoke-static {p1}, Lcom/motorola/camera/utility/ColorUtil;->getTrueAspectRatio(Landroid/util/Size;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/motorola/camera/utility/ColorUtil;->isSameAspectRatio(FF)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
