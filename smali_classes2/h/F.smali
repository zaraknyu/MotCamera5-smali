.class public final Lh/F;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc/X;

.field public final b:Lh/C;

.field public final c:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>(Lc/X;Lh/C;)V
    .locals 1

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/F;->a:Lc/X;

    iput-object p2, p0, Lh/F;->b:Lh/C;

    new-instance p1, Lc/X$$ExternalSyntheticLambda0;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Lc/X$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lh/F;->c:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method


# virtual methods
.method public final autoCrop(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p1, Lh/E;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lh/E;

    iget v1, v0, Lh/E;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lh/E;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Lh/E;

    invoke-direct {v0, p0, p1}, Lh/E;-><init>(Lh/F;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    :goto_0
    iget-object p1, v0, Lh/E;->a:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lh/E;->c:I

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

    iget-object p0, p0, Lh/F;->c:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/s1;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lc/s1;->C:Lc/r0;

    if-eqz p0, :cond_4

    iput v3, v0, Lh/E;->c:I

    invoke-virtual {p0, v0}, Lc/r0;->c(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lc/a;

    if-eqz p1, :cond_4

    new-instance p0, Lh/D;

    invoke-direct {p0, p1}, Lh/D;-><init>(Lc/a;)V

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPageIndex()I
    .locals 1

    iget-object p0, p0, Lh/F;->a:Lc/X;

    iget-object v0, p0, Lc/X;->d:Lc/h;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lc/h;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final setCrop(Lh/D;)V
    .locals 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lh/F;->c:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/s1;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lc/s1;->D:Lc/k1;

    iget-object p1, p1, Lh/D;->a:Lc/a;

    invoke-virtual {p1}, Lc/a;->b()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object p0, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    aget-object p0, p0, v2

    invoke-virtual {v0, p1, p0}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lc/s1;->g()Lc/a;

    move-result-object p1

    invoke-virtual {p1}, Lc/a;->b()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lc/s1;->E:Lc/a;

    if-nez p0, :cond_2

    new-instance p0, Lc/a;

    invoke-direct {p0}, Lc/a;-><init>()V

    :cond_2
    sget-object p1, Lc/s1;->d0:[Lkotlin/reflect/KProperty;

    aget-object p1, p1, v2

    invoke-virtual {v0, p0, p1}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    :cond_3
    :goto_0
    return-void
.end method
