.class public Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;
.super Landroid/preference/Preference;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;


# static fields
.field private static final androidns:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field private mAlphaSliderEnabled:Z

.field mDefaultValue:I

.field private mDensity:F

.field private mValue:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/high16 v0, -0x100

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mValue:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/high16 v0, -0x100

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mValue:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/high16 v0, -0x100

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mValue:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    invoke-direct {p0, p1, p2}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static convertToARGB(I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v0, -0x1

    const/16 v4, 0x10

    const-string v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "#"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {p0, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    invoke-static {v3, v2, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v7, :cond_2

    const/16 v3, 0xff

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v1, v0

    move v2, v0

    move v3, v0

    goto :goto_0
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v7, 0x1

    iget v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/high16 v1, 0x41f8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->getValue()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_4

    move v2, v3

    :goto_1
    if-ge v2, v6, :cond_3

    if-le v3, v7, :cond_0

    if-le v2, v7, :cond_0

    add-int/lit8 v0, v5, -0x2

    if-ge v3, v0, :cond_0

    add-int/lit8 v0, v6, -0x2

    if-lt v2, v0, :cond_2

    :cond_0
    const v0, -0x777778

    :goto_2
    invoke-virtual {v4, v3, v2, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    if-eq v3, v2, :cond_1

    invoke-virtual {v4, v2, v3, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v4
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDensity:F

    invoke-virtual {p0, p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    if-eqz p2, :cond_1

    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "defaultValue"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    const-string v1, "alphaSlider"

    invoke-interface {p2, v0, v1, v4}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    :cond_1
    iget v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mValue:I

    return-void

    :catch_0
    move-exception v1

    const-string v1, "ColorPickerPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "#FF000000"

    invoke-static {v0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    goto :goto_0

    :cond_2
    const-string v0, "http://schemas.android.com/apk/res/android"

    const-string v1, "defaultValue"

    invoke-interface {p2, v0, v1, v4}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    goto :goto_0
.end method

.method private setPreviewColor()V
    .locals 6

    iget-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    const v2, 0x1020018

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget v4, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDensity:F

    const/high16 v5, 0x4100

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->removeViews(II)V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/appyet/mobile/view/preference/colorpicker/AlphaPatternDrawable;

    const/high16 v2, 0x40a0

    iget v3, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v2}, Lcom/appyet/mobile/view/preference/colorpicker/AlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    invoke-virtual {p0, v0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->getPersistedInt(I)I

    move-result v0

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mValue:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mValue:I

    return v0

    :catch_0
    move-exception v0

    iget v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mDefaultValue:I

    iput v0, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mValue:I

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iput-object p1, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mView:Landroid/view/View;

    invoke-direct {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    return-void
.end method

.method public onColorChanged(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->persistInt(I)Z

    :cond_0
    iput p1, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mValue:I

    invoke-direct {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->setPreviewColor()V

    :try_start_0
    invoke-virtual {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    new-instance v0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;

    invoke-virtual {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->getValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->setOnColorChangedListener(Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;)V

    iget-boolean v1, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->setAlphaSliderVisible(Z)V

    :cond_0
    invoke-virtual {v0}, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerDialog;->show()V

    const/4 v0, 0x0

    return v0
.end method

.method public setAlphaSliderEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/appyet/mobile/view/preference/colorpicker/ColorPickerPreference;->mAlphaSliderEnabled:Z

    return-void
.end method
