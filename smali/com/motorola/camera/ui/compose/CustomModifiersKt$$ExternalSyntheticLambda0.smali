.class public final synthetic Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget p0, p0, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    packed-switch p0, :pswitch_data_0

    const-string p0, "$this$layout"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "measurable"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p3, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result p0

    iget-wide v0, p3, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result p3

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v2

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    if-lt v2, p0, :cond_0

    if-lt v0, p3, :cond_0

    if-ltz p0, :cond_0

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "maxWidth must be >= than minWidth,\nmaxHeight must be >= than minHeight,\nminWidth and minHeight must be >= 0"

    invoke-static {v1}, Landroidx/compose/ui/unit/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    invoke-static {p0, v2, p3, v0}, Landroidx/compose/ui/unit/ConstraintsKt;->createConstraints(IIII)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    new-instance v0, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p2, p3, p0, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "$this$layout"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "measurable"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p3, Landroidx/compose/ui/unit/Constraints;->value:J

    invoke-interface {p2, v0, v1}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object p0

    iget p2, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    iget p3, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    new-instance v0, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/compose/CustomModifiersKt$$ExternalSyntheticLambda1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    sget-object p0, Lkotlin/collections/EmptyMap;->INSTANCE:Lkotlin/collections/EmptyMap;

    invoke-interface {p1, p2, p3, p0, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout$1(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
