.class public Lcom/adobe/magic_clean/CCornersInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;
    }
.end annotation


# instance fields
.field public mCornersType:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

.field public mIsGoodForDisplay:Z

.field private mPoints:[Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/adobe/magic_clean/CCornersInfo;->mPoints:[Landroid/graphics/PointF;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Lcom/adobe/magic_clean/CCornersInfo;->mPoints:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v3, v1

    .line 4
    iget-object v3, p0, Lcom/adobe/magic_clean/CCornersInfo;->mPoints:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v5}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v7, 0x1

    aput-object v4, v3, v7

    .line 5
    iget-object v3, p0, Lcom/adobe/magic_clean/CCornersInfo;->mPoints:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v6, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 6
    iget-object v3, p0, Lcom/adobe/magic_clean/CCornersInfo;->mPoints:[Landroid/graphics/PointF;

    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    const/4 v5, 0x3

    aput-object v4, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;->kCCornersInfoTypeNone:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    iput-object v0, p0, Lcom/adobe/magic_clean/CCornersInfo;->mCornersType:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    .line 8
    iput-boolean v1, p0, Lcom/adobe/magic_clean/CCornersInfo;->mIsGoodForDisplay:Z

    return-void
.end method

.method public constructor <init>(Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;[Landroid/graphics/PointF;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/adobe/magic_clean/CCornersInfo;->mCornersType:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    .line 11
    iput-object p2, p0, Lcom/adobe/magic_clean/CCornersInfo;->mPoints:[Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;[Landroid/graphics/PointF;Z)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/adobe/magic_clean/CCornersInfo;->mCornersType:Lcom/adobe/magic_clean/CCornersInfo$CCornersInfoType;

    .line 14
    iput-object p2, p0, Lcom/adobe/magic_clean/CCornersInfo;->mPoints:[Landroid/graphics/PointF;

    .line 15
    iput-boolean p3, p0, Lcom/adobe/magic_clean/CCornersInfo;->mIsGoodForDisplay:Z

    return-void
.end method

.method private deepClone([Landroid/graphics/PointF;)[Landroid/graphics/PointF;
    .locals 4

    array-length p0, p1

    new-array v0, p0, [Landroid/graphics/PointF;

    add-int/lit8 p0, p0, -0x1

    :goto_0
    if-ltz p0, :cond_1

    aget-object v1, p1, p0

    if-eqz v1, :cond_0

    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, p0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getClonedPoints()[Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/adobe/magic_clean/CCornersInfo;->mPoints:[Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Lcom/adobe/magic_clean/CCornersInfo;->deepClone([Landroid/graphics/PointF;)[Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getPointsRef()[Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/adobe/magic_clean/CCornersInfo;->mPoints:[Landroid/graphics/PointF;

    return-object p0
.end method
