.class public final synthetic Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;

    iget-object v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->cornerPoints:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v0, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->cornerPoints:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v3, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    sub-float/2addr v0, v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    sub-float/2addr v1, p0

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;

    iget-object v0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->cornerPoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v0, v0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->cornerPoints:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v3, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    sub-float/2addr v0, v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    sub-float/2addr v1, p0

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;

    iget-object p0, p0, Lcom/motorola/camera/utility/TiltShiftUtil$RotatedRectangle;->cornerPoints:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v3, v3, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->x:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/util/ArrayList;)D

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    iget v1, v1, Lcom/motorola/camera/utility/TiltShiftUtil$Point;->y:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->averageOfFloat(Ljava/util/ArrayList;)D

    move-result-wide v0

    new-instance p0, Lcom/motorola/camera/utility/TiltShiftUtil$Point;

    double-to-float v2, v2

    double-to-float v0, v0

    invoke-direct {p0, v2, v0}, Lcom/motorola/camera/utility/TiltShiftUtil$Point;-><init>(FF)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
