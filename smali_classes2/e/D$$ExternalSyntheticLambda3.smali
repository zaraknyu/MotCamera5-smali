.class public final synthetic Le/D$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    .line 1
    const/4 p4, 0x2

    iput p4, p0, Le/D$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/D$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Le/D$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Le/D$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;I)V
    .locals 0

    .line 2
    const/4 p4, 0x1

    iput p4, p0, Le/D$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/D$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Le/D$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Le/D$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Le/D;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    iput v0, p0, Le/D$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/D$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Le/D$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Le/D$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Le/D$$ExternalSyntheticLambda3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Le/D$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Le/D$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x1

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object p0, p0, Le/D$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    invoke-static {v0, p0, v1, p1, p2}, La/l;->ResumeSavedSessionDialog(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/ComposerImpl;I)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Le/D$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Le/D$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    check-cast p1, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0xc07

    invoke-static {p2}, Landroidx/compose/runtime/AnchoredGroupPath;->updateChangedFlags(I)I

    move-result p2

    iget-object p0, p0, Le/D$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    invoke-static {p0, v0, v1, p1, p2}, La/l;->ShowForMillis(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/ComposerImpl;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Le/D$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v1, p0, Le/D$$ExternalSyntheticLambda3;->f$2:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Le/D;

    check-cast p1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    check-cast p2, Landroidx/compose/ui/geometry/Offset;

    const-string v1, "<unused var>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Le/D$$ExternalSyntheticLambda3;->f$1:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/M;

    iget-object p1, v2, Le/D;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v0, v2, Le/D;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    move-object v8, p1

    check-cast v8, Ljava/util/List;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v3, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-wide p1, p2, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget v1, p0, Le/M;->a:F

    neg-float v1, v1

    invoke-static {v1, p1, p2}, La/l;->a(FJ)J

    move-result-wide p1

    invoke-static {v3, v4, p1, p2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p1

    new-instance v1, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object v3, p0, Le/M;->c:Ljava/util/List;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/compose/ui/geometry/Offset;

    iget-wide v4, p1, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    iget-wide v6, p0, Le/M;->d:J

    invoke-virtual/range {v2 .. v8}, Le/D;->a(Ljava/util/List;JJLjava/util/List;)J

    move-result-wide p1

    iget-object p0, p0, Le/M;->b:Le/t;

    invoke-virtual {p0, v8, p1, p2}, Le/t;->a(Ljava/util/List;J)Le/t;

    move-result-object p0

    iget-object v0, v2, Le/D;->b:Le/B;

    iget-object v0, v0, Le/B;->a:Lkotlin/jvm/functions/Function1;

    check-cast v0, Lc/a$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Lc/a$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v2, Le/D;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v0, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
