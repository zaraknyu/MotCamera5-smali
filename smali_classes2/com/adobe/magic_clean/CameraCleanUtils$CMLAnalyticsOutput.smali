.class public Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CMLAnalyticsOutput"
.end annotation


# instance fields
.field public isValid:Z

.field public mBufferForKeys:[[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;->InitCMLAnalyticsOutput(Z[[B)V

    return-void
.end method

.method public constructor <init>(Z[[B)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;->InitCMLAnalyticsOutput(Z[[B)V

    return-void
.end method

.method private InitCMLAnalyticsOutput(Z[[B)V
    .locals 4

    iput-boolean p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;->isValid:Z

    if-nez p2, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;->mBufferForKeys:[[B

    return-void

    :cond_0
    array-length p1, p2

    const/4 v0, 0x0

    aget-object v1, p2, v0

    array-length v1, v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    aput p1, v2, v0

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;->mBufferForKeys:[[B

    move p1, v0

    :goto_0
    array-length v1, p2

    if-ge p1, v1, :cond_2

    move v1, v0

    :goto_1
    aget-object v2, p2, p1

    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/adobe/magic_clean/CameraCleanUtils$CMLAnalyticsOutput;->mBufferForKeys:[[B

    aget-object v3, v3, p1

    aget-byte v2, v2, v1

    aput-byte v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
