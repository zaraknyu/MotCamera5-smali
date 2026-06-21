.class public final Lb/i;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lb/o;

.field public b:Lg/a0;

.field public c:Lcom/adobe/magic_clean/CameraCleanUtils$EdgeDetectionOutput;

.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lb/o;

.field public f:I


# direct methods
.method public constructor <init>(Lb/o;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lb/i;->e:Lb/o;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lb/i;->d:Ljava/lang/Object;

    iget p1, p0, Lb/i;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lb/i;->f:I

    iget-object p1, p0, Lb/i;->e:Lb/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lb/o;->a(Landroid/graphics/Bitmap;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
