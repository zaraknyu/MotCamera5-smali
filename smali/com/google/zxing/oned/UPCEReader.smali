.class public abstract Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final L_AND_G_PATTERNS:[[I

.field public static final L_PATTERNS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    filled-new-array {v0, v1, v2, v2}, [I

    move-result-object v3

    filled-new-array {v1, v1, v1, v2}, [I

    move-result-object v4

    filled-new-array {v1, v2, v1, v1}, [I

    move-result-object v5

    const/4 v6, 0x4

    move v7, v6

    filled-new-array {v2, v7, v2, v2}, [I

    move-result-object v6

    move v8, v7

    filled-new-array {v2, v2, v0, v1}, [I

    move-result-object v7

    move v9, v8

    filled-new-array {v2, v1, v0, v2}, [I

    move-result-object v8

    filled-new-array {v2, v2, v2, v9}, [I

    move-result-object v9

    filled-new-array {v2, v0, v2, v1}, [I

    move-result-object v10

    filled-new-array {v2, v1, v2, v0}, [I

    move-result-object v11

    filled-new-array {v0, v2, v2, v1}, [I

    move-result-object v12

    filled-new-array/range {v3 .. v12}, [[I

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->L_PATTERNS:[[I

    const/16 v1, 0x14

    new-array v3, v1, [[I

    sput-object v3, Lcom/google/zxing/oned/UPCEReader;->L_AND_G_PATTERNS:[[I

    const/4 v4, 0x0

    const/16 v5, 0xa

    invoke-static {v0, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v5, v1, :cond_1

    sget-object v0, Lcom/google/zxing/oned/UPCEReader;->L_PATTERNS:[[I

    add-int/lit8 v3, v5, -0xa

    aget-object v0, v0, v3

    array-length v3, v0

    new-array v3, v3, [I

    move v6, v4

    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_0

    array-length v7, v0

    sub-int/2addr v7, v6

    sub-int/2addr v7, v2

    aget v7, v0, v7

    aput v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/google/zxing/oned/UPCEReader;->L_AND_G_PATTERNS:[[I

    aput-object v3, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
