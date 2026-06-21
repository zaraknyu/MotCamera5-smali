.class public final Lc/S;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $r8$classId:I

.field public a:Z

.field public b:Ljava/util/Collection;

.field public c:Ljava/util/Iterator;

.field public d:Lc/s1;

.field public e:I

.field public final synthetic f:Lc/X;


# direct methods
.method public synthetic constructor <init>(ILc/X;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput p1, p0, Lc/S;->$r8$classId:I

    iput-object p2, p0, Lc/S;->f:Lc/X;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    iget p1, p0, Lc/S;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lc/S;

    iget-object p0, p0, Lc/S;->f:Lc/X;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0, p2}, Lc/S;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lc/S;

    iget-object p0, p0, Lc/S;->f:Lc/X;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0, p2}, Lc/S;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lc/S;

    iget-object p0, p0, Lc/S;->f:Lc/X;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0, p2}, Lc/S;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lc/S;->$r8$classId:I

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lc/S;

    iget-object p0, p0, Lc/S;->f:Lc/X;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0, p2}, Lc/S;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lc/S;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance p1, Lc/S;

    iget-object p0, p0, Lc/S;->f:Lc/X;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0, p2}, Lc/S;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lc/S;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance p1, Lc/S;

    iget-object p0, p0, Lc/S;->f:Lc/X;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0, p2}, Lc/S;-><init>(ILc/X;Lkotlin/coroutines/Continuation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p0}, Lc/S;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lc/S;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lc/S;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lc/S;->a:Z

    iget-object v3, p0, Lc/S;->d:Lc/s1;

    iget-object v4, p0, Lc/S;->c:Ljava/util/Iterator;

    iget-object v5, p0, Lc/S;->b:Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lc/S;->f:Lc/X;

    iget-object p1, p1, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p1

    move-object v5, v1

    move v1, v2

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lc/s1;

    iput-object v5, p0, Lc/S;->b:Ljava/util/Collection;

    iput-object v4, p0, Lc/S;->c:Ljava/util/Iterator;

    iput-object v3, p0, Lc/S;->d:Lc/s1;

    iput-boolean v1, p0, Lc/S;->a:Z

    iput v2, p0, Lc/S;->e:I

    invoke-virtual {v3, v1, p0}, Lc/s1;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    :goto_1
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    new-instance v6, Lc/I;

    iget v3, v3, Lc/s1;->w:I

    invoke-direct {v6, p1, v3}, Lc/I;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_2

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    :goto_3
    return-object v0

    :pswitch_0
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lc/S;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lc/S;->a:Z

    iget-object v3, p0, Lc/S;->d:Lc/s1;

    iget-object v4, p0, Lc/S;->c:Ljava/util/Iterator;

    iget-object v5, p0, Lc/S;->b:Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lc/S;->f:Lc/X;

    iget-object p1, p1, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p1

    move-object v5, v1

    move v1, v2

    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lc/s1;

    iput-object v5, p0, Lc/S;->b:Ljava/util/Collection;

    iput-object v4, p0, Lc/S;->c:Ljava/util/Iterator;

    iput-object v3, p0, Lc/S;->d:Lc/s1;

    iput-boolean v1, p0, Lc/S;->a:Z

    iput v2, p0, Lc/S;->e:I

    invoke-virtual {v3, v1, p0}, Lc/s1;->b(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    goto :goto_7

    :cond_9
    :goto_5
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_a

    new-instance v6, Lc/I;

    iget v3, v3, Lc/s1;->w:I

    invoke-direct {v6, p1, v3}, Lc/I;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_6

    :cond_a
    const/4 v6, 0x0

    :goto_6
    if-eqz v6, :cond_8

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    :goto_7
    return-object v0

    :pswitch_1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lc/S;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    if-ne v1, v2, :cond_c

    iget-boolean v1, p0, Lc/S;->a:Z

    iget-object v3, p0, Lc/S;->d:Lc/s1;

    iget-object v4, p0, Lc/S;->c:Ljava/util/Iterator;

    iget-object v5, p0, Lc/S;->b:Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_9

    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lc/S;->f:Lc/X;

    iget-object p1, p1, Lc/X;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v4, p1

    move-object v5, v1

    move v1, v2

    :cond_e
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Lc/s1;

    invoke-virtual {v3}, Lc/s1;->b()Z

    move-result p1

    xor-int/2addr p1, v2

    iput-object v5, p0, Lc/S;->b:Ljava/util/Collection;

    iput-object v4, p0, Lc/S;->c:Ljava/util/Iterator;

    iput-object v3, p0, Lc/S;->d:Lc/s1;

    iput-boolean v1, p0, Lc/S;->a:Z

    iput v2, p0, Lc/S;->e:I

    invoke-virtual {v3, v1, p1, p0}, Lc/s1;->a(ZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_f

    goto :goto_b

    :cond_f
    :goto_9
    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_10

    new-instance v6, Lc/I;

    iget v3, v3, Lc/s1;->w:I

    invoke-direct {v6, p1, v3}, Lc/I;-><init>(Landroid/graphics/Bitmap;I)V

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_e

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_11
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    :goto_b
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
