.class public abstract Lc/M0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc/G;

.field public final b:Lkotlinx/coroutines/sync/MutexImpl;

.field public final c:Ljava/util/ArrayList;

.field public d:Lc/P0;

.field public final synthetic e:Lc/s1;


# direct methods
.method public constructor <init>(Lc/s1;Ljava/util/List;Lc/G;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "rendition"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc/M0;->e:Lc/s1;

    iput-object p3, p0, Lc/M0;->a:Lc/G;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default()Lkotlinx/coroutines/sync/MutexImpl;

    move-result-object p1

    iput-object p1, p0, Lc/M0;->b:Lkotlinx/coroutines/sync/MutexImpl;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lc/M0;->c:Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/M0;

    iget-object p2, p2, Lc/M0;->c:Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, Lc/P0;->f:Lc/P0;

    iput-object p1, p0, Lc/M0;->d:Lc/P0;

    return-void
.end method

.method public static a(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    .line 13
    iget-object v0, p0, Lc/M0;->e:Lc/s1;

    .line 14
    iget-object v0, v0, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/P0;

    .line 16
    invoke-virtual {p0, v0, p1}, Lc/M0;->a(Lc/P0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lc/r0;Lc/P0;Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, p1, p2, v0, p3}, Lc/M0;->a(Lc/P0;Landroid/graphics/Bitmap;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lc/M0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/M0;->e:Lc/s1;

    .line 2
    iget-object v0, v0, Lc/s1;->y:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/P0;

    .line 4
    const-string v1, "state"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lc/M0;->d:Lc/P0;

    invoke-virtual {p0, v1, v0}, Lc/M0;->a(Lc/P0;Lc/P0;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0, p1}, Lc/M0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lc/P0;Landroid/graphics/Bitmap;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 7

    .line 17
    sget-object v0, Lg/x;->c:Landroid/app/ActivityManager;

    new-instance v1, Lc/K0;

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lc/K0;-><init>(Lc/M0;Lc/P0;Landroid/graphics/Bitmap;ZLkotlin/coroutines/Continuation;)V

    invoke-static {v1, p4}, Lg/x;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final a(Lc/P0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lc/H0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc/H0;

    iget v1, v0, Lc/H0;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/H0;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/H0;

    invoke-direct {v0, p0, p2}, Lc/H0;-><init>(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lc/H0;->b:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 6
    iget v2, v0, Lc/H0;->d:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lc/H0;->a:Lc/M0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 7
    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lc/M0;->d:Lc/P0;

    invoke-virtual {p0, p2, p1}, Lc/M0;->a(Lc/P0;Lc/P0;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lc/M0;->a:Lc/G;

    invoke-virtual {p1}, Lc/G;->g()Z

    move-result p2

    if-nez p2, :cond_4

    .line 10
    iput-object p0, v0, Lc/H0;->a:Lc/M0;

    iput v3, v0, Lc/H0;->d:I

    .line 11
    sget-object p2, Lg/x;->c:Landroid/app/ActivityManager;

    new-instance p2, Lc/A;

    invoke-direct {p2, v4, p1, v4}, Lc/A;-><init>(Landroid/graphics/BitmapFactory$Options;Lc/G;Lkotlin/coroutines/Continuation;)V

    invoke-static {p2, v0}, Lg/x;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 12
    :cond_3
    :goto_1
    check-cast p2, Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    new-instance p1, Lc/N0;

    iget-object p0, p0, Lc/M0;->d:Lc/P0;

    invoke-direct {p1, p0, p2}, Lc/N0;-><init>(Lc/P0;Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_4
    return-object v4
.end method

.method public final a(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lc/F0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lc/F0;

    iget v1, v0, Lc/F0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/F0;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/F0;

    invoke-direct {v0, p0, p1}, Lc/F0;-><init>(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lc/F0;->a:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 19
    iget v2, v0, Lc/F0;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 20
    invoke-static {p0}, Lc/M0;->a(Lc/M0;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 21
    iput v3, v0, Lc/F0;->c:I

    invoke-virtual {p0, v3, v0}, Lc/M0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lc/N0;

    if-eqz p1, :cond_4

    .line 22
    iget-object p0, p1, Lc/N0;->b:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_4

    .line 23
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 24
    :cond_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 25
    :cond_5
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public abstract a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
.end method

.method public abstract a(Lc/P0;Lc/P0;)Z
.end method

.method public final a$1(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lc/G0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc/G0;

    iget v1, v0, Lc/G0;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/G0;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/G0;

    invoke-direct {v0, p0, p2}, Lc/G0;-><init>(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lc/G0;->a:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lc/G0;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iput v3, v0, Lc/G0;->c:I

    invoke-virtual {p0, p1, v0}, Lc/M0;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Lc/N0;

    if-eqz p2, :cond_4

    iget-object p0, p2, Lc/N0;->b:Landroid/graphics/Bitmap;

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lc/P0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lc/I0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lc/I0;

    iget v1, v0, Lc/I0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lc/I0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lc/I0;

    invoke-direct {v0, p0, p2}, Lc/I0;-><init>(Lc/M0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p2, v0, Lc/I0;->c:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v2, v0, Lc/I0;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lc/I0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    iget-object p1, v0, Lc/I0;->a:Ljava/lang/Object;

    check-cast p1, Lc/P0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, v0, Lc/I0;->b:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Lc/P0;

    iget-object p0, v0, Lc/I0;->a:Ljava/lang/Object;

    check-cast p0, Lc/M0;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lc/M0;->d:Lc/P0;

    invoke-virtual {p0, p2, p1}, Lc/M0;->a(Lc/P0;Lc/P0;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 4
    iput-object p0, v0, Lc/I0;->a:Ljava/lang/Object;

    iput-object p1, v0, Lc/I0;->b:Ljava/lang/Object;

    iput v4, v0, Lc/I0;->e:I

    invoke-virtual {p0, v0}, Lc/M0;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_3

    .line 5
    :cond_4
    :goto_1
    iget-object p0, p0, Lc/M0;->c:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/M0;

    .line 7
    iput-object p1, v0, Lc/I0;->a:Ljava/lang/Object;

    iput-object p0, v0, Lc/I0;->b:Ljava/lang/Object;

    iput v3, v0, Lc/I0;->e:I

    invoke-virtual {p2, p1, v0}, Lc/M0;->b(Lc/P0;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    :goto_3
    return-object v1

    .line 8
    :cond_6
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lg/x;->c:Landroid/app/ActivityManager;

    new-instance v0, Lc/V;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lc/V;-><init>(Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    invoke-static {v0, p1}, Lg/x;->a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final d()Z
    .locals 1

    iget-object v0, p0, Lc/M0;->b:Lkotlinx/coroutines/sync/MutexImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/sync/MutexImpl;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lc/M0;->c:Ljava/util/ArrayList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/M0;

    invoke-virtual {v0}, Lc/M0;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
