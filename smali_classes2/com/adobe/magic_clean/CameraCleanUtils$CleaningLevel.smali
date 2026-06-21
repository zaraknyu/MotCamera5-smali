.class public Lcom/adobe/magic_clean/CameraCleanUtils$CleaningLevel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/magic_clean/CameraCleanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CleaningLevel"
.end annotation


# static fields
.field public static kDefaultAggressiveCleaningLevel:I = 0x4

.field public static kDefaultCleaningLevel:I = 0x2

.field public static kLightTextCleaningLevel:I = 0x8

.field public static kMaxCleaningLevel:I = 0x6

.field public static kMinCleaningLevel:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
