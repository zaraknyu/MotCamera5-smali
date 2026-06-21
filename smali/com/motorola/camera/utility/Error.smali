.class public final Lcom/motorola/camera/utility/Error;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mErrorDescription:I

.field public mSensor:I

.field public mStorage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/utility/Error;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    iput v0, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    iput v0, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/motorola/camera/utility/Error;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/motorola/camera/utility/Error;->$r8$classId:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    .line 6
    iput p2, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    .line 7
    iput p3, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    return-void
.end method

.method public synthetic constructor <init>(IIII)V
    .locals 0

    .line 3
    iput p4, p0, Lcom/motorola/camera/utility/Error;->$r8$classId:I

    iput p1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    iput p2, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    iput p3, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/dynamite/zzo;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/utility/Error;->$r8$classId:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iget p1, p1, Lcom/google/android/gms/dynamite/zzo;->zza:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 10
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->CAMERA_FACING:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 12
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    .line 13
    iput v1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    goto :goto_0

    :cond_0
    const/high16 p1, 0x1000000

    .line 14
    iput p1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    goto :goto_0

    :cond_1
    const/high16 p1, 0x2000000

    .line 15
    iput p1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    goto :goto_0

    .line 16
    :cond_2
    iput p1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    .line 17
    :goto_0
    sget-object p1, Lcom/motorola/camera/settings/SettingsManager;->STORAGE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    .line 18
    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    .line 19
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    .line 20
    iput v1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    goto :goto_1

    :cond_3
    const/high16 p1, 0x800000

    .line 21
    iput p1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    goto :goto_1

    :cond_4
    const/high16 p1, 0x400000

    .line 22
    iput p1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    .line 23
    :goto_1
    iput v0, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    return-void
.end method


# virtual methods
.method public getError()I
    .locals 2

    iget v0, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    iget v1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    or-int/2addr v0, v1

    iget p0, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    or-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/motorola/camera/utility/Error;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutBounds{mHeight="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLayoutType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    const-string p0, "WRAP_CONTENT"

    goto :goto_0

    :cond_1
    const-string p0, "MATCH_VIEW"

    goto :goto_0

    :cond_2
    const-string p0, "FIXED"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Status{mTYPE="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/utility/Error;->mSensor:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const-string v1, "null"

    goto :goto_1

    :cond_3
    const-string v1, "INFO"

    goto :goto_1

    :cond_4
    const-string v1, "ERROR"

    goto :goto_1

    :cond_5
    const-string v1, "COMPLETION"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mWhat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/utility/Error;->mStorage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExtra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/motorola/camera/utility/Error;->mErrorDescription:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
