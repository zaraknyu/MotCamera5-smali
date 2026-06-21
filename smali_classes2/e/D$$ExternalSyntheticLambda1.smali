.class public final synthetic Le/D$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$1:Lkotlin/jvm/functions/Function0;

.field public final synthetic f$2:Le/D;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function0;Le/D;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/D$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Le/D$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    iput-object p3, p0, Le/D$$ExternalSyntheticLambda1;->f$2:Le/D;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Le/D$$ExternalSyntheticLambda1;->f$2:Le/D;

    iget-object v1, v0, Le/D;->f:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v2, p0, Le/D$$ExternalSyntheticLambda1;->f$0:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v3, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v3, :cond_1

    iget-object p0, p0, Le/D$$ExternalSyntheticLambda1;->f$1:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/M;

    iget-object v3, v0, Le/D;->b:Le/B;

    iget-object v4, v0, Le/D;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/geometry/Offset;

    iget-wide v5, v5, Landroidx/compose/ui/geometry/Offset;->packedValue:J

    invoke-virtual {v4}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    const-wide/16 v8, 0x0

    invoke-static {v5, v6, v8, v9}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object p0, p0, Le/M;->b:Le/t;

    invoke-virtual {p0, v7, v5, v6}, Le/t;->a(Ljava/util/List;J)Le/t;

    move-result-object p0

    iget-object v5, v3, Le/B;->a:Lkotlin/jvm/functions/Function1;

    check-cast v5, Lc/a$$ExternalSyntheticLambda0;

    invoke-virtual {v5, p0}, Lc/a$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v3, v3, Le/B;->b:Lkotlin/jvm/functions/Function1;

    check-cast v3, Le/J$$ExternalSyntheticLambda1;

    invoke-virtual {v3, p0}, Le/J$$ExternalSyntheticLambda1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-virtual {v4, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, v0, Le/D;->e:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    new-instance v3, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {v3, v8, v9}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-virtual {p0, v3}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    new-instance p0, Landroidx/compose/ui/geometry/Offset;

    invoke-direct {p0, v8, v9}, Landroidx/compose/ui/geometry/Offset;-><init>(J)V

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iput-wide v8, v0, Le/D;->h:J

    const/4 p0, 0x0

    iput-boolean p0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
