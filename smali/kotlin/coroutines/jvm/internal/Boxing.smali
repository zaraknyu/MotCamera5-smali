.class public abstract Lkotlin/coroutines/jvm/internal/Boxing;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static cache:Lcom/google/zxing/Result;

.field public static final notOnJava9:Lcom/google/zxing/Result;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/zxing/Result;

    const/4 v1, 0x0

    const/16 v2, 0x17

    invoke-direct {v0, v1, v1, v1, v2}, Lcom/google/zxing/Result;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    sput-object v0, Lkotlin/coroutines/jvm/internal/Boxing;->notOnJava9:Lcom/google/zxing/Result;

    return-void
.end method

.method public static final boxInt(I)V
    .locals 1

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    return-void
.end method
