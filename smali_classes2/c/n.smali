.class public final Lc/n;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lc/s1;

.field public c:Z

.field public d:Z

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lc/q;

.field public g:I


# direct methods
.method public constructor <init>(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lc/n;->f:Lc/q;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lc/n;->e:Ljava/lang/Object;

    iget p1, p0, Lc/n;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc/n;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lc/n;->f:Lc/q;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lc/q;->a(Lc/s1;ZZZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
