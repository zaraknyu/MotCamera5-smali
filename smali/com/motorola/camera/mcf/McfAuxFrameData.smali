.class public final Lcom/motorola/camera/mcf/McfAuxFrameData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final CNAME:Ljava/lang/String; = "McfAuxFrameData"

.field public static final FORMAT_JPEG:Ljava/lang/String; = "JPEG"

.field public static final FORMAT_NV21:Ljava/lang/String; = "NV21"

.field public static final MNAME_DEPTH_MAP:Ljava/lang/String; = "DepthMap"

.field public static final MNAME_DOC_SCAN:Ljava/lang/String; = "DOC_SCAN_BMP_DATA"

.field public static final MNAME_POST_VIEW_FRAME:Ljava/lang/String; = "PostViewFrame"


# instance fields
.field private final mAuxHeight:I

.field private final mAuxStride:I

.field private final mAuxWidth:I

.field private final mAuxilaryBuffer:[B

.field private final mAuxilaryBufferFid:I

.field private final mExtraJson:Ljava/lang/String;

.field private final mFormat:Ljava/lang/String;

.field private final mGoodRoiHeight:I

.field private final mGoodRoiWidth:I

.field private final mGoodRoiX:I

.field private final mGoodRoiY:I

.field private final mHeight:I

.field private final mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

.field private final mName:Ljava/lang/String;

.field private final mPrimaryBuffer:[B

.field private final mPrimaryBufferFid:I

.field private final mStride:I

.field private final mText:Ljava/lang/String;

.field private final mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mName:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mText:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mExtraJson:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mFormat:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mWidth:I

    .line 31
    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mHeight:I

    .line 32
    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mStride:I

    .line 33
    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxWidth:I

    .line 34
    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxHeight:I

    .line 35
    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxStride:I

    .line 36
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBuffer:[B

    .line 37
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBuffer:[B

    .line 38
    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBufferFid:I

    .line 39
    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBufferFid:I

    .line 40
    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiX:I

    .line 41
    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiY:I

    .line 42
    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiWidth:I

    .line 43
    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mName:Ljava/lang/String;

    .line 3
    const-string/jumbo v0, "text"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mText:Ljava/lang/String;

    .line 4
    const-string v0, "format"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mFormat:Ljava/lang/String;

    .line 5
    const-string v0, "extraJson"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mExtraJson:Ljava/lang/String;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    .line 7
    const-string v1, "bufferParams"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 8
    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mWidth:I

    .line 9
    const-string v3, "height"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mHeight:I

    .line 10
    const-string/jumbo v4, "stride"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mStride:I

    .line 11
    const-string v4, "auxWidth"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxWidth:I

    .line 12
    const-string v4, "auxHeight"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxHeight:I

    .line 13
    const-string v4, "auxStride"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxStride:I

    .line 14
    const-string/jumbo v1, "primary"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 15
    const-string v4, "fid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBufferFid:I

    int-to-long v4, v1

    .line 16
    invoke-static {p1, v4, v5}, Lcom/motorola/camera/background/provider/FileDataContract;->retrieveFileInBuffer(Landroid/content/Context;J)[B

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBuffer:[B

    const/4 p1, 0x0

    .line 17
    iput p1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBufferFid:I

    .line 18
    iput-object v0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBuffer:[B

    .line 19
    const-string p1, "goodROI"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 20
    const-string p2, "left"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiX:I

    .line 21
    const-string/jumbo p2, "top"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiY:I

    .line 22
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiWidth:I

    .line 23
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiHeight:I

    return-void
.end method


# virtual methods
.method public getAuxHeight()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxWidth:I

    return p0
.end method

.method public getAuxStride()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxStride:I

    return p0
.end method

.method public getAuxWidth()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxWidth:I

    return p0
.end method

.method public getAuxiliary()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBuffer:[B

    return-object p0
.end method

.method public getAuxiliaryLength()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getChroma()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBuffer:[B

    return-object p0
.end method

.method public getChromaLength()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxilaryBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getData()[B
    .locals 2

    const-string v0, "NV21"

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getLuma()[B

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "JPEG"

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/motorola/camera/mcf/McfAuxFrameData;->getPrimary()[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtraJson()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mExtraJson:Ljava/lang/String;

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getGoodRoiHeight()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiHeight:I

    return p0
.end method

.method public getGoodRoiWidth()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiWidth:I

    return p0
.end method

.method public getGoodRoiX()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiX:I

    return p0
.end method

.method public getGoodRoiY()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiY:I

    return p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mHeight:I

    return p0
.end method

.method public getInstance()Lcom/motorola/camera/mcf/McfInstanceIdentifier;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    return-object p0
.end method

.method public getLuma()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBuffer:[B

    return-object p0
.end method

.method public getLumaLength()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getPrimary()[B
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBuffer:[B

    return-object p0
.end method

.method public getPrimaryLength()I
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBuffer:[B

    array-length p0, p0

    return p0
.end method

.method public getStride()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mStride:I

    return p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mWidth:I

    return p0
.end method

.method public getmPrimaryBufferFid()I
    .locals 0

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mPrimaryBufferFid:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "McfAuxFrameData{mName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mText=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mFormat=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mExtraJson=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mExtraJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mInstance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mInstance:Lcom/motorola/camera/mcf/McfInstanceIdentifier;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mStride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAuxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAuxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAuxStride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mAuxStride:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGoodRoiX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGoodRoiY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGoodRoiWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGoodRoiHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/mcf/McfAuxFrameData;->mGoodRoiHeight:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
