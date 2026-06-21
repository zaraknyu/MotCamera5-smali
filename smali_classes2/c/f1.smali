.class public final Lc/f1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Z

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lc/g1;

.field public g:I


# direct methods
.method public constructor <init>(Lc/g1;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lc/f1;->f:Lc/g1;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lc/f1;->e:Ljava/lang/Object;

    iget p1, p0, Lc/f1;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lc/f1;->g:I

    iget-object p1, p0, Lc/f1;->f:Lc/g1;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lc/g1;->a(ZLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
