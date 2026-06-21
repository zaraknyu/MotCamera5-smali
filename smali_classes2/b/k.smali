.class public final Lb/k;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# instance fields
.field public a:Lg/a0;

.field public b:Lcom/adobe/magic_clean/CameraCleanUtils$FilterThumbnailOutput;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lb/o;

.field public e:I


# direct methods
.method public constructor <init>(Lb/o;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    iput-object p1, p0, Lb/k;->d:Lb/o;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lb/k;->c:Ljava/lang/Object;

    iget p1, p0, Lb/k;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lb/k;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lb/k;->d:Lb/o;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lb/o;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ILb/c;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
