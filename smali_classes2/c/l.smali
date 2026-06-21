.class public final Lc/l;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lc/s1;

.field public b:Z

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lc/q;

.field public e:I


# direct methods
.method public constructor <init>(Lc/q;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lc/l;->d:Lc/q;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lc/l;->c:Ljava/lang/Object;

    iget p1, p0, Lc/l;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc/l;->e:I

    const/4 p1, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lc/l;->d:Lc/q;

    invoke-virtual {v1, p1, v0, p0}, Lc/q;->b(Lc/s1;ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
