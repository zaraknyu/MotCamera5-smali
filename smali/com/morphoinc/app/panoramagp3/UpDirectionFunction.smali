.class public final Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final angle:I

.field public direction:I

.field public final inputHeight:I

.field public final inputWidth:I

.field public final maxHeight:I

.field public final maxWidth:I

.field public final scale:I


# direct methods
.method public constructor <init>(IIIIIII)V
    .locals 8

    iput p7, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->$r8$classId:I

    packed-switch p7, :pswitch_data_0

    const/4 p7, 0x0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIIS)V

    move-object v0, p0

    const/4 p0, 0x2

    .line 2
    iput p0, v0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->direction:I

    return-void

    :pswitch_0
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    const/4 v7, 0x0

    .line 3
    invoke-direct/range {v0 .. v7}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIIS)V

    const/4 p0, 0x1

    .line 4
    iput p0, v0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->direction:I

    return-void

    :pswitch_1
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    const/4 v7, 0x0

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIIS)V

    const/4 p0, 0x0

    .line 6
    iput p0, v0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->direction:I

    return-void

    :pswitch_2
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    const/4 v7, 0x0

    .line 7
    invoke-direct/range {v0 .. v7}, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;-><init>(IIIIIIS)V

    const/4 p0, 0x3

    .line 8
    iput p0, v0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->direction:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(IIIIIIS)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p7, -0x1

    .line 10
    iput p7, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->direction:I

    .line 11
    iput p1, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->inputWidth:I

    .line 12
    iput p2, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->inputHeight:I

    mul-int/lit8 p5, p5, 0x2

    .line 13
    iput p5, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->scale:I

    .line 14
    iput p6, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->angle:I

    .line 15
    iput p3, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->maxWidth:I

    .line 16
    iput p4, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->maxHeight:I

    return-void
.end method


# virtual methods
.method public final getHorizontalPreviewSize()Landroid/util/Size;
    .locals 4

    iget v0, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->maxWidth:I

    iget v1, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->scale:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    const/16 v2, 0x5a

    iget v3, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->angle:I

    if-eq v2, v3, :cond_1

    const/16 v2, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->inputHeight:I

    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->inputWidth:I

    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v1

    :goto_1
    and-int/lit8 v0, v0, -0x2

    and-int/lit8 p0, p0, -0x2

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public final getVerticalPreviewSize()Landroid/util/Size;
    .locals 4

    iget v0, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->maxHeight:I

    iget v1, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->scale:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v1

    const/16 v2, 0x5a

    iget v3, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->angle:I

    if-eq v2, v3, :cond_1

    const/16 v2, 0x10e

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->inputWidth:I

    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v1

    goto :goto_1

    :cond_1
    :goto_0
    iget p0, p0, Lcom/morphoinc/app/panoramagp3/UpDirectionFunction;->inputHeight:I

    add-int/2addr p0, v1

    add-int/lit8 p0, p0, -0x1

    div-int/2addr p0, v1

    :goto_1
    and-int/lit8 p0, p0, -0x2

    and-int/lit8 v0, v0, -0x2

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p0, v0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method
