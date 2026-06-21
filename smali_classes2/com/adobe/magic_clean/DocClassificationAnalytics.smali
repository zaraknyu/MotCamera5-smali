.class public final Lcom/adobe/magic_clean/DocClassificationAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ATTRIBUTE_CLASSIFICATIONS_DATA_PREFIX:Ljava/lang/String; = "adb.event.context.classifier.classifications_data_"

.field private static final ATTRIBUTE_CLASSIFIER_VERSION:Ljava/lang/String; = "adb.event.context.classifier.classifier_version"

.field private static final CHARACTER_DATA_PER_SEGMENT:I = 0x64

.field private static final CLASSIFICATION_TYPES:I = 0x5

.field private static final CLASSIFIER_VERSION:Ljava/lang/String; = "1.3.0.s11"

.field private static final EVENT_NAME:Ljava/lang/String; = "Classifier:Collect Doc Classifications"

.field private static final MAX_DATA_SEGMENTS:I = 0x5


# instance fields
.field private mPageClassificationMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/adobe/magic_clean/DocClassificationAnalytics;->mPageClassificationMap:Ljava/util/TreeMap;

    const-string p1, "1.3.0.s11"

    iput-object p1, p0, Lcom/adobe/magic_clean/DocClassificationAnalytics;->mVersion:Ljava/lang/String;

    return-void
.end method

.method private static buildDataString(ILcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;)Ljava/lang/String;
    .locals 7

    if-ltz p0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mPredictionsArray:[F

    if-eqz v0, :cond_1

    array-length v0, v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mPredictionsArray:[F

    const/4 v2, 0x0

    aget p0, p0, v2

    invoke-static {p0}, Lcom/adobe/magic_clean/DocClassificationAnalytics;->probabilityValue(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mPredictionsArray:[F

    const/4 v3, 0x1

    aget p0, p0, v3

    invoke-static {p0}, Lcom/adobe/magic_clean/DocClassificationAnalytics;->probabilityValue(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mPredictionsArray:[F

    const/4 v4, 0x2

    aget p0, p0, v4

    invoke-static {p0}, Lcom/adobe/magic_clean/DocClassificationAnalytics;->probabilityValue(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object p0, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mPredictionsArray:[F

    const/4 v5, 0x3

    aget p0, p0, v5

    invoke-static {p0}, Lcom/adobe/magic_clean/DocClassificationAnalytics;->probabilityValue(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object p0, p1, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;->mPredictionsArray:[F

    const/4 p1, 0x4

    aget p0, p0, p1

    invoke-static {p0}, Lcom/adobe/magic_clean/DocClassificationAnalytics;->probabilityValue(F)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%1$d:0=%2$d;1=%3$d;2=%4$d;3=%5$d;4=%6$d"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static probabilityValue(F)I
    .locals 1

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public addPage(ILcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;)V
    .locals 0

    iget-object p0, p0, Lcom/adobe/magic_clean/DocClassificationAnalytics;->mPageClassificationMap:Ljava/util/TreeMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public buildContextData()Ljava/util/TreeMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "adb.event.context.classifier.classifier_version"

    iget-object v2, p0, Lcom/adobe/magic_clean/DocClassificationAnalytics;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/adobe/magic_clean/DocClassificationAnalytics;->mPageClassificationMap:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;

    invoke-static {v3, v2}, Lcom/adobe/magic_clean/DocClassificationAnalytics;->buildDataString(ILcom/adobe/magic_clean/DocClassificationUtils$DocClassificationOutput;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x1f4

    if-le v3, v4, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    mul-int/lit8 v2, v1, 0x64

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v2, :cond_4

    add-int/lit8 v3, v2, 0x64

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "adb.event.context.classifier.classifications_data_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 0

    const-string p0, "Classifier:Collect Doc Classifications"

    return-object p0
.end method
