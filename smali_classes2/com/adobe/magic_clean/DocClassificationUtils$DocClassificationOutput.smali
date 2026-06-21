.class public Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/DocClassificationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocClassificationOutput"
.end annotation


# instance fields
.field public mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

.field public mError:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationErrCode;

.field public mPredictionsArray:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationOther:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    iput-object v0, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    .line 3
    sget-object v0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationErrCode;->kDocClassificationErrCodeSuccess:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationErrCode;

    iput-object v0, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mError:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationErrCode;

    .line 4
    sget v0, Lcom/adobe/magic_clean/DocClassificationUtils;->kNumberOfClasses:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mPredictionsArray:[F

    const/4 p0, 0x0

    .line 5
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public constructor <init>(Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationErrCode;[F)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 7
    sget-object p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;->kDocClassificationOther:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    :cond_0
    iput-object p1, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    if-nez p2, :cond_1

    .line 8
    sget-object p2, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationErrCode;->kDocClassificationErrCodeSuccess:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationErrCode;

    :cond_1
    iput-object p2, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mError:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationErrCode;

    if-nez p3, :cond_2

    .line 9
    sget p1, Lcom/adobe/magic_clean/DocClassificationUtils;->kNumberOfClasses:I

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mPredictionsArray:[F

    const/4 p0, 0x0

    .line 10
    invoke-static {p1, p0}, Ljava/util/Arrays;->fill([FF)V

    return-void

    .line 11
    :cond_2
    array-length p1, p3

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mPredictionsArray:[F

    .line 12
    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mPredictionsArray:[F

    return-void
.end method


# virtual methods
.method public getClassProbability(Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;)F
    .locals 0

    iget-object p0, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mPredictionsArray:[F

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    return p0
.end method

.method public getPrimaryClassProbability()F
    .locals 1

    iget-object v0, p0, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mDocClassification:Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;

    invoke-virtual {p0, v0}, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->getClassProbability(Lcom/adobe/magic_clean/DocClassificationUtils$DocClassification;)F

    move-result p0

    return p0
.end method
