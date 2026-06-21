.class public final Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mFonts:Ljava/util/List;

.field public final mStatusCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    .line 7
    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;->mFonts:Ljava/util/List;

    return-void
.end method
