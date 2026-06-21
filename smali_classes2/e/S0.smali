.class public final Le/S0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public a:Landroidx/compose/runtime/MutableState;

.field public b:I

.field public final synthetic c:Lc/s1;

.field public final synthetic d:Lc/a;

.field public final synthetic e:Landroidx/compose/runtime/MutableState;


# direct methods
.method public constructor <init>(Lc/s1;Lc/a;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Le/S0;->c:Lc/s1;

    iput-object p2, p0, Le/S0;->d:Lc/a;

    iput-object p3, p0, Le/S0;->e:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Le/S0;

    iget-object v0, p0, Le/S0;->d:Lc/a;

    iget-object v1, p0, Le/S0;->e:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Le/S0;->c:Lc/s1;

    invoke-direct {p1, p0, v0, v1, p2}, Le/S0;-><init>(Lc/s1;Lc/a;Landroidx/compose/runtime/MutableState;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Le/S0;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Le/S0;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Le/S0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Le/S0;->b:I

    iget-object v2, p0, Le/S0;->c:Lc/s1;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Le/S0;->a:Landroidx/compose/runtime/MutableState;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, v2, Lc/s1;->U:Lc/R0;

    iget-object v1, p0, Le/S0;->e:Landroidx/compose/runtime/MutableState;

    iput-object v1, p0, Le/S0;->a:Landroidx/compose/runtime/MutableState;

    iput v4, p0, Le/S0;->b:I

    invoke-virtual {p1, v4, p0}, Lc/M0;->a$1(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    new-instance v5, Landroidx/compose/ui/graphics/AndroidImageBitmap;

    invoke-direct {v5, p1}, Landroidx/compose/ui/graphics/AndroidImageBitmap;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_4
    move-object v5, v4

    :goto_1
    invoke-interface {v1, v5}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p1, p0, Le/S0;->d:Lc/a;

    invoke-virtual {p1}, Lc/a;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v2, Lc/s1;->C:Lc/r0;

    iput-object v4, p0, Le/S0;->a:Landroidx/compose/runtime/MutableState;

    iput v3, p0, Le/S0;->b:I

    invoke-virtual {p1, p0}, Lc/r0;->d(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    :goto_2
    return-object v0

    :cond_5
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
