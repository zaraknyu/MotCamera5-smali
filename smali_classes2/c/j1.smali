.class public final Lc/j1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public final synthetic b:Lc/s1;

.field public c:I


# direct methods
.method public constructor <init>(Lc/s1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lc/j1;->b:Lc/s1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc/j1;->a:Ljava/lang/Object;

    iget p1, p0, Lc/j1;->c:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc/j1;->c:I

    iget-object p1, p0, Lc/j1;->b:Lc/s1;

    invoke-virtual {p1, p0}, Lc/s1;->b(Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    const/4 p0, 0x0

    return-object p0
.end method
