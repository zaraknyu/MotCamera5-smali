.class public final Lf/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lf/s;->$r8$classId:I

    iput-object p2, p0, Lf/s;->a:Ljava/lang/Object;

    iput-object p3, p0, Lf/s;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    iget p2, p0, Lf/s;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    iget-object p2, p0, Lf/s;->a:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->zip(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    iget-object v2, v1, Lkotlin/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lc/P0;

    iget-object v1, v1, Lkotlin/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lc/P0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lc/P0;->a:Lc/a;

    const-string v4, "updated"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne v2, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lc/a;->b()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v1, Lc/P0;->a:Lc/a;

    invoke-virtual {v3, v4}, Lc/a;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    iget v3, v2, Lc/P0;->b:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    iget v4, v1, Lc/P0;->b:I

    if-ne v3, v4, :cond_5

    :cond_4
    iget v3, v2, Lc/P0;->c:I

    iget v4, v1, Lc/P0;->c:I

    if-ne v3, v4, :cond_5

    iget v3, v2, Lc/P0;->d:I

    if-ne v3, v4, :cond_5

    iget-wide v2, v2, Lc/P0;->e:J

    iget-wide v4, v1, Lc/P0;->e:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    :cond_5
    iget-object p0, p0, Lf/s;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->getIntValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableIntState;->setIntValue(I)V

    :cond_6
    :goto_1
    iput-object p1, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p0, Lf/s;->a:Ljava/lang/Object;

    check-cast p2, Lf/u;

    iget-object v0, p2, Lf/u;->f:Lkotlin/jvm/functions/Function1;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    check-cast v0, Lf/u$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lf/u$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/E;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lf/E;->a:Lf/D;

    if-eqz p1, :cond_7

    iget-object p0, p0, Lf/s;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object v0, p2, Lf/u;->d:Lf/D;

    iget v0, v0, Lf/D;->a:I

    iget v1, p1, Lf/D;->a:I

    if-eq v0, v1, :cond_7

    iput-object p1, p2, Lf/u;->d:Lf/D;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object p2, p0, Lf/s;->a:Ljava/lang/Object;

    check-cast p2, Lf/u;

    iget-object v0, p2, Lf/u;->e:Lkotlin/jvm/functions/Function1;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    check-cast v0, Lf/u$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Lf/u$$ExternalSyntheticLambda0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf/E;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lf/E;->a:Lf/D;

    if-eqz p1, :cond_8

    iget-object p0, p0, Lf/s;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    iget-object v0, p2, Lf/u;->d:Lf/D;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p2, Lf/u;->d:Lf/D;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
