.class public final synthetic Le/D$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Le/D$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Le/D$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Le/D$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    iput-object p3, p0, Le/D$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget v0, p0, Le/D$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Le/D$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v1, p0, Le/D$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Le/n1;

    iget-object p0, p0, Le/D$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    iget-wide v2, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-wide v4, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {v2, v3, v4, v5}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v2

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v4, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iput-wide v4, v0, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    invoke-static {p0}, Le/W;->a(Landroidx/compose/runtime/MutableState;)F

    move-result p0

    invoke-static {p0, v2, v3}, Landroidx/compose/ui/geometry/Offset;->times-tuRUvjQ(FJ)J

    move-result-wide p0

    iget-object v0, v1, Le/n1;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/geometry/Offset;

    iget-wide v2, v2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    iget-object v2, v1, Le/n1;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-virtual {v1, v2, p0, p1}, Le/n1;->a(FJ)J

    move-result-wide p0

    new-instance v1, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v1, p0, p1}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Le/D$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Le/t;

    iget-object v1, p0, Le/D$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Le/t;

    iget-object p0, p0, Le/D$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Landroidx/compose/animation/core/Animatable;

    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const-string v2, "start"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "stop"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Le/t;

    iget-wide v4, v0, Le/t;->a:J

    iget-wide v6, v1, Le/t;->a:J

    invoke-static {v4, v5, p1, v6, v7}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JFJ)J

    move-result-wide v4

    iget-wide v6, v0, Le/t;->b:J

    iget-wide v8, v1, Le/t;->b:J

    invoke-static {v6, v7, p1, v8, v9}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JFJ)J

    move-result-wide v6

    iget-wide v8, v0, Le/t;->c:J

    iget-wide v10, v1, Le/t;->c:J

    invoke-static {v8, v9, p1, v10, v11}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JFJ)J

    move-result-wide v8

    iget-wide v10, v0, Le/t;->d:J

    iget-wide v0, v1, Le/t;->d:J

    invoke-static {v10, v11, p1, v0, v1}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JFJ)J

    move-result-wide v10

    invoke-direct/range {v3 .. v11}, Le/t;-><init>(JJJJ)V

    invoke-interface {p0, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Le/D$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Le/D;

    iget-object v1, p0, Le/D$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Le/D$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-object v2, v0, Le/D;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v2}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v2, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, v0, Le/D;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, Landroidx/compose/ui/geometry/Offset;

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, v0, Le/D;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance p1, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {p1, v1, v2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
