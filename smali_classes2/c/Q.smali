.class public final Lc/Q;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Ljava/util/Collection;

.field public b:Ljava/util/Iterator;

.field public c:Lc/s1;

.field public d:Ljava/util/Collection;

.field public e:I

.field public final synthetic f:Lc/X;


# direct methods
.method public constructor <init>(Lc/X;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lc/Q;->f:Lc/X;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lc/Q;

    iget-object p0, p0, Lc/Q;->f:Lc/X;

    invoke-direct {p1, p0, p2}, Lc/Q;-><init>(Lc/X;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    new-instance p1, Lc/Q;

    iget-object p0, p0, Lc/Q;->f:Lc/X;

    invoke-direct {p1, p0, p2}, Lc/Q;-><init>(Lc/X;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lc/Q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lc/Q;->e:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lc/Q;->d:Ljava/util/Collection;

    iget-object v4, p0, Lc/Q;->c:Lc/s1;

    iget-object v5, p0, Lc/Q;->b:Ljava/util/Iterator;

    iget-object v6, p0, Lc/Q;->a:Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lc/Q;->f:Lc/X;

    iget-object v1, p1, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/s1;

    iget-object v5, v4, Lc/s1;->W:Lc/f0;

    iget-object v6, v5, Lc/M0;->e:Lc/s1;

    iget-object v6, v6, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v6}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/P0;

    const-string v7, "state"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, v5, Lc/M0;->d:Lc/P0;

    invoke-virtual {v5, v8, v6}, Lc/f0;->a(Lc/P0;Lc/P0;)Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v5, v5, Lc/M0;->a:Lc/G;

    invoke-virtual {v5}, Lc/G;->g()Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v4}, Lc/s1;->u()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v4, v4, Lc/s1;->N:Lc/u0;

    iget-object v5, v4, Lc/M0;->e:Lc/s1;

    iget-object v5, v5, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v5}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/P0;

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v4, Lc/M0;->d:Lc/P0;

    invoke-virtual {v4, v6, v5}, Lc/u0;->a(Lc/P0;Lc/P0;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v4, v4, Lc/M0;->a:Lc/G;

    invoke-virtual {v4}, Lc/G;->g()Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p1, p1, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, p1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lc/s1;

    iput-object v1, p0, Lc/Q;->a:Ljava/util/Collection;

    iput-object v5, p0, Lc/Q;->b:Ljava/util/Iterator;

    iput-object v4, p0, Lc/Q;->c:Lc/s1;

    iput-object v1, p0, Lc/Q;->d:Ljava/util/Collection;

    iput v3, p0, Lc/Q;->e:I

    invoke-virtual {v4, p0}, Lc/s1;->a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    :cond_5
    move-object v6, v1

    :goto_3
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_6

    new-instance v7, Lc/I;

    iget v4, v4, Lc/s1;->w:I

    invoke-direct {v7, p1, v4}, Lc/I;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_4

    :cond_6
    move-object v7, v2

    :goto_4
    invoke-interface {v1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v1, v6

    goto :goto_2

    :cond_7
    check-cast v1, Ljava/util/List;

    const-string p0, "<this>"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq p1, v0, :cond_b

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/I;

    iget-object p1, p1, Lc/I;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_6

    :cond_a
    return-object v2

    :cond_b
    return-object p0
.end method
