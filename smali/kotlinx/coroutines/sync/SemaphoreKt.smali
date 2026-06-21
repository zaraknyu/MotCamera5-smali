.class public abstract Lkotlinx/coroutines/sync/SemaphoreKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BROKEN:Lkotlinx/coroutines/internal/Symbol;

.field public static final CANCELLED:Lkotlinx/coroutines/internal/Symbol;

.field public static final MAX_SPIN_CYCLES:I

.field public static final PERMIT:Lkotlinx/coroutines/internal/Symbol;

.field public static final SEGMENT_SIZE:I

.field public static final TAKEN:Lkotlinx/coroutines/internal/Symbol;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x64

    const/16 v1, 0xc

    const-string v2, "kotlinx.coroutines.semaphore.maxSpinCycles"

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/internal/InlineList;->systemProp$default(IILjava/lang/String;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/sync/SemaphoreKt;->MAX_SPIN_CYCLES:I

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v2, "PERMIT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->PERMIT:Lkotlinx/coroutines/internal/Symbol;

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v2, "TAKEN"

    invoke-direct {v0, v2, v3}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->TAKEN:Lkotlinx/coroutines/internal/Symbol;

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v2, "BROKEN"

    invoke-direct {v0, v2, v3}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->BROKEN:Lkotlinx/coroutines/internal/Symbol;

    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v2, "CANCELLED"

    invoke-direct {v0, v2, v3}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlinx/coroutines/sync/SemaphoreKt;->CANCELLED:Lkotlinx/coroutines/internal/Symbol;

    const-string v0, "kotlinx.coroutines.semaphore.segmentSize"

    const/16 v2, 0x10

    invoke-static {v2, v1, v0}, Lkotlinx/coroutines/internal/InlineList;->systemProp$default(IILjava/lang/String;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/sync/SemaphoreKt;->SEGMENT_SIZE:I

    return-void
.end method
