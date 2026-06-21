.class public final Landroidx/compose/ui/text/input/ImeOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final autoCorrect:Z

.field public final hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

.field public final imeAction:I

.field public final keyboardType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/ui/text/input/ImeOptions;

    invoke-direct {v0}, Landroidx/compose/ui/text/input/ImeOptions;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Landroidx/compose/ui/text/intl/LocaleList;->Empty:Landroidx/compose/ui/text/intl/LocaleList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    iput v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    iput v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    iput-object v0, p0, Landroidx/compose/ui/text/input/ImeOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/text/input/ImeOptions;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Landroidx/compose/ui/text/input/ImeOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v0, p0, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    iget-boolean v1, p1, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    iget v0, p0, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    iget v1, p1, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    iget v1, p1, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    if-ne v0, v1, :cond_4

    iget-object p0, p0, Landroidx/compose/ui/text/input/ImeOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    iget-object p1, p1, Landroidx/compose/ui/text/input/ImeOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-boolean v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v1, p0, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    const/16 v2, 0x3c1

    invoke-static {v1, v0, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/ui/text/input/ImeOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    iget-object p0, p0, Landroidx/compose/ui/text/intl/LocaleList;->localeList:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ImeOptions(singleLine=false, capitalization="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "None"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", autoCorrect="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroidx/compose/ui/text/input/ImeOptions;->autoCorrect:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", keyboardType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x4

    const-string v6, "Invalid"

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const-string v10, "Unspecified"

    iget v11, p0, Landroidx/compose/ui/text/input/ImeOptions;->keyboardType:I

    if-nez v11, :cond_0

    move-object v11, v10

    goto :goto_0

    :cond_0
    if-ne v11, v9, :cond_1

    const-string v11, "Text"

    goto :goto_0

    :cond_1
    if-ne v11, v8, :cond_2

    const-string v11, "Ascii"

    goto :goto_0

    :cond_2
    if-ne v11, v7, :cond_3

    const-string v11, "Number"

    goto :goto_0

    :cond_3
    if-ne v11, v5, :cond_4

    const-string v11, "Phone"

    goto :goto_0

    :cond_4
    if-ne v11, v4, :cond_5

    const-string v11, "Uri"

    goto :goto_0

    :cond_5
    if-ne v11, v3, :cond_6

    const-string v11, "Email"

    goto :goto_0

    :cond_6
    if-ne v11, v2, :cond_7

    const-string v11, "Password"

    goto :goto_0

    :cond_7
    const/16 v12, 0x8

    if-ne v11, v12, :cond_8

    const-string v11, "NumberPassword"

    goto :goto_0

    :cond_8
    const/16 v12, 0x9

    if-ne v11, v12, :cond_9

    const-string v11, "Decimal"

    goto :goto_0

    :cond_9
    move-object v11, v6

    :goto_0
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", imeAction="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, -0x1

    iget v12, p0, Landroidx/compose/ui/text/input/ImeOptions;->imeAction:I

    if-ne v12, v11, :cond_a

    move-object v1, v10

    goto :goto_1

    :cond_a
    if-nez v12, :cond_b

    goto :goto_1

    :cond_b
    if-ne v12, v9, :cond_c

    const-string v1, "Default"

    goto :goto_1

    :cond_c
    if-ne v12, v8, :cond_d

    const-string v1, "Go"

    goto :goto_1

    :cond_d
    if-ne v12, v7, :cond_e

    const-string v1, "Search"

    goto :goto_1

    :cond_e
    if-ne v12, v5, :cond_f

    const-string v1, "Send"

    goto :goto_1

    :cond_f
    if-ne v12, v4, :cond_10

    const-string v1, "Previous"

    goto :goto_1

    :cond_10
    if-ne v12, v3, :cond_11

    const-string v1, "Next"

    goto :goto_1

    :cond_11
    if-ne v12, v2, :cond_12

    const-string v1, "Done"

    goto :goto_1

    :cond_12
    move-object v1, v6

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", platformImeOptions=null, hintLocales="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/text/input/ImeOptions;->hintLocales:Landroidx/compose/ui/text/intl/LocaleList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
